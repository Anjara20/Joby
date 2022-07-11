import 'package:flutter/material.dart';
import 'package:flutter_project/pageAuth/connexion.dart';
import 'package:flutter_project/pageAuth/inscription.dart';

import '../screens/liste_job.dart';

class NavBar2 extends StatelessWidget {
  const NavBar2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: [
        UserAccountsDrawerHeader(
          accountName: Text('Bli_Kely'),
          accountEmail: Text('Bli@gmail.com'),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.asset(
                'assets/123.jpg',
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //       image: AssetImage('assets/1.jpg'), fit: BoxFit.cover),
          // ),
        ),
        ListTile(
          leading: Icon(Icons.business),
          title: Text('Entreprises'),
          onTap: () => null,
        ),
        ListTile(
          leading: Icon(Icons.card_travel),
          title: Text('Emplois'),
          onTap: () => null,
        ),
        ListTile(
          leading: Icon(Icons.tag),
          title: Text('Blogs'),
          onTap: () => null,
        ),
        ListTile(
          leading: Icon(Icons.add),
          title: Text('Creer un Resume CV'),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => ListJob()),
                ));
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Parametres'),
          onTap: () => null,
        ),
        ListTile(
          leading: Icon(Icons.call),
          title: Text('Contacts'),
          onTap: () => null,
        ),
        Divider(),
        ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Se deconnecter'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => Connexion()),
                  ));
            }),
      ]),
    );
  }
}
