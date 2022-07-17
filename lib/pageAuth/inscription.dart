import 'package:flutter/material.dart';
import 'package:flutter_project/pageAuth/connexion.dart';
import 'package:flutter_project/network_utils/api.dart';
import 'package:flutter_project/pageCrud/accueil.dart';
import 'package:flutter_project/pageCrud/profil.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:http/http.dart' as http;

class Inscription extends StatefulWidget {
  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  final dropValue = ValueNotifier('');
  final dropOpcoes = ['Candidat', 'Recruteur'];

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
        child: Form(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset('assets/image-nogae.jpg',
                    height: 140.0, width: 140.0),
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Entrez votre nom',
                  ),
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Adresse e-mail',
                  ),
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Mot de passe',
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Confirmez votre mot de passe',
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 10.0),
                SizedBox(height: 10.0),
                ValueListenableBuilder(
                    valueListenable: dropValue,
                    builder: (BuildContext context, String value, _) {
                      return SizedBox(
                        width: 320,
                        child: DropdownButton<String>(
                            isExpanded: true,
                            hint: Text('Candidat'),
                            value: (value.isEmpty) ? null : value,
                            onChanged: (Candidat) =>
                                dropValue.value = Candidat.toString(),
                            items: dropOpcoes
                                .map(
                                  (op) => DropdownMenuItem(
                                    value: op,
                                    child: Text(op),
                                  ),
                                )
                                .toList()),
                      );
                    }),
                FlatButton(
                  onPressed: () {
                    if (dropValue == 'Candidat') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => Accueil()),
                          ));
                    } else if (dropValue == 'Recruteur') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => Connexion()),
                          ));
                    }
                  },
                  color: Color.fromARGB(255, 17, 142, 201),
                  child: Text(
                    "S'inscrire",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                SizedBox(height: 3.0),
                OutlineButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => Connexion()),
                        ));
                  },
                  borderSide: BorderSide(width: 1.0, color: Colors.black),
                  child: Text(
                    "Vous avez déjà un compte ?",
                    // style: TextStyle(
                    //   color: Colors.white,
                    // ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

signup(name, email, password) async {
  // print("Calling");
  Map data = {
    'name': name,
    'email': email,
    'password': password,
    'passcord_confirmation': password
  };
  // print(data.toString());
  // final response = await http.post(
  //   Uri.parse(),
  // );
}
