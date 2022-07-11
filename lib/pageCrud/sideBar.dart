import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

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
          leading: Icon(Icons.favorite),
          title: Text('Favoris'),
          onTap: () => null,
        ),
        ListTile(
          leading: Icon(Icons.people),
          title: Text('Amis'),
          onTap: () => null,
        ),
        ListTile(
          leading: Icon(Icons.share),
          title: Text('Partager'),
          onTap: () => null,
        ),
        ListTile(
          leading: Icon(Icons.notifications),
          title: Text('Notifications'),
          onTap: () => null,
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Parametres'),
          onTap: () => null,
        ),
        ListTile(
          leading: Icon(Icons.description),
          title: Text('Infos'),
          onTap: () => null,
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text('Quitter'),
          onTap: () => null,
        ),
      ]),
    );
  }
}
