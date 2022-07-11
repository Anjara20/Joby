import 'package:flutter/material.dart';
import 'package:flutter_project/pageAuth/connexion.dart';

import 'package:flutter_project/pageCrud/accueil.dart';
import 'package:flutter_project/pageCrud/profil.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class Inscription extends StatefulWidget {
  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  String nom = '';
  String motDePasse = '';
  String email = '';
  // var myInitialItem = 'Employé';
  // List<String> myItems = [
  //   'Employé',
  //   'Client',
  // ];
  // List<dynamic> typePerson = [
  //   {
  //     "Id": 1,
  //     "Label": "Employe",
  //   },
  //   {
  //     "Id": 2,
  //     "Label": "Client",
  //   },
  // ];

  // List<dynamic> stats = [];
  // List<dynamic> statsMaster = [];
  // String? PersonId;
  // String? statId;
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
                  decoration: InputDecoration(
                    labelText: 'Entrez votre nom',
                    // border: OutlineInputBorder(
                    //   borderSide: BorderSide(color: Colors.white, width: 5),
                    // ),
                    // labelStyle: TextStyle(
                    //   color: Colors.white,
                    // ),
                    // counterStyle: TextStyle(
                    //   color: Colors.white,
                    // ),
                  ),
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Adresse e-mail',
                    // border: OutlineInputBorder(
                    //   borderSide: BorderSide(color: Colors.white, width: 5),
                    // ),
                    // labelStyle: TextStyle(
                    //   color: Colors.white,
                    // ),
                    // counterStyle: TextStyle(
                    //   color: Colors.white,
                    // ),
                  ),
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Mot de passe',
                    // border: OutlineInputBorder(
                    //   borderSide: BorderSide(color: Colors.white, width: 5),
                    // ),
                    // labelStyle: TextStyle(
                    //   color: Colors.white,
                    // ),
                    // counterStyle: TextStyle(
                    //   color: Colors.white,
                    // ),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Confirmez votre mot de passe',
                    // border: OutlineInputBorder(
                    //   borderSide: BorderSide(color: Colors.white, width: 5),
                    // ),
                    // labelStyle: TextStyle(
                    //   color: Colors.white,
                    // ),
                    // counterStyle: TextStyle(
                    //   color: Colors.white,
                    // ),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 10.0),
                // TextFormField(
                //   decoration: InputDecoration(
                //     labelText: "S'enregistrer en tant que'",
                //   ),
                // ),

                // Column(
                //   children: [
                //     FormHelper.dropDownWidgetWithLabel(
                //       context,
                //       "Connecter en tant que:",
                //       "Selection d'un type d'authentification",
                //       this.PersonId,
                //       this.typePerson,
                //       (onChangedVal) {
                //         this.PersonId = onChangedVal;
                //         print("Connectee en tant que: $onChangedVal");
                //       },
                //       (onValidateVal) {
                //         if (onValidateVal == null) {
                //           return "Veuillez entrer un type d'authentification";
                //         }
                //         return null;
                //       },
                //       borderColor: Theme.of(context).primaryColor,
                //       borderFocusColor: Theme.of(context).primaryColor,
                //       borderRadius: 10,
                //       optionValue: "Id",
                //       optionLabel: "Label",
                //     ),
                //   ],
                // ),
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
