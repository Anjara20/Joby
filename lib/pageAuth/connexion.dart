import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_project/pageAuth/inscription.dart';
import 'package:flutter_project/pageCrud/accueil.dart';
import 'package:flutter_project/network_utils/api.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Connexion extends StatefulWidget {
  @override
  State<Connexion> createState() => _ConnexionState();
  void setState(Null Function() param0) {}
}

class _ConnexionState extends State<Connexion> {
  bool isAuth = false;

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  signIn(String email, String pass) async {
    Map body = {
      "email": email,
      "password": pass,
      "password_confirmation": pass
    };
    var res = await Network().authData(body, 'login');
    if (res.statusCode == 200) {
      print("Response status : ${res.statusCode}");
      print("Response status : ${res.body}");
      if (res.body != null) {
        SharedPreferences localStorage = await SharedPreferences.getInstance();
        localStorage.setString('token', res.body);
        setState(() {
          isAuth = true;
        });
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (BuildContext context) => Accueil()),
            (Route<dynamic> route) => false);
      }
    } else {
      print("Response Status: ${res.body}");
    }
  }

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
                    height: 200.0, width: 200.0),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Entrer votre e-mail',
                  ),
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  controller: _passController,
                  decoration: InputDecoration(
                    labelText: 'Mot de passe',
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 25.0),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => Accueil()),
                        ));
                  },
                  // onPressed: _emailController.text == "" ||
                  //         _passController.text == ""
                  //     ? null
                  //     : () {
                  //         signIn(_emailController.text, _passController.text);
                  //       },
                  color: Color.fromARGB(255, 17, 142, 201),
                  child: Text(
                    "S'authentifier",
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
                          builder: ((context) => Inscription()),
                        ));
                  },
                  borderSide: BorderSide(width: 1.0, color: Colors.black),
                  child: Text(
                    "Pas encore de compte ?",
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
