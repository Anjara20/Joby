import 'package:flutter/material.dart';
import 'package:flutter_project/pageCrud/profil-2.dart';
import 'sideBar.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavBar2(),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(0, 10, 106, 185),
          title: Text('Profil'),
        ),
        body: Center());
  }
}
