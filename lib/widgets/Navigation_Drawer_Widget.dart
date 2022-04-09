import 'package:flutter/material.dart';
import 'package:bots360_app/screens/screens.dart';

import '../screens/profile_page.dart';
class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('Laone Mpela'),
              accountEmail: Text('laonempela@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network('https://thumbs.dreamstime.com/b/businessman-icon-vector-male-avatar-profile-image-profile-businessman-icon-vector-male-avatar-profile-image-182095609.jpg',
                width: 90.0,
                height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const ProfilePage(),),),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Exit'),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const SignIn(),),),
    ),
    ],
          ),
      );
  }
}
