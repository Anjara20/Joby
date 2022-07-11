import 'package:flutter/material.dart';
import 'package:flutter_project/pageAuth/connexion.dart';
import 'package:flutter_project/pageAuth/inscription.dart';
import 'package:flutter_project/pageAuth/login_screen.dart';
import 'package:flutter_project/pageCrud/accueil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text("Flutter Laravel Auth"),
      ),
      body: Center(
        child: Text('Home Screen'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: ListView(
          children: [
            DrawerHeader(
                child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.amber,
                  radius: 50,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Anjaramamy Liantsoa",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Anjaramamy@gmail.com",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )),
            ListTile(
              title: Text("Login"),
              leading: Icon(Icons.login),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Connexion()));
              },
            ),
            ListTile(
              title: Text("Logout"),
              leading: Icon(Icons.logout),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Inscription()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
