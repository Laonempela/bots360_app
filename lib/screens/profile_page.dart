import 'package:flutter/material.dart';
import 'package:bots360_app/utils/utils.dart';

import '../models/user.dart';
import '../widgets/profile_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(height: 10.0),
            ProfileWidget(
          imagePath: user.imagePath,
              onClicked: () async{},
        ),
            const SizedBox(height: 24),
            buildName(user),
        ],
        ),
    );
  }
  Widget buildName(User user) => Column(
    children: [
      Text(
        user.name,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
      const SizedBox(height: 4),
      Text(
        user.email,
        style: const TextStyle(color: Colors.grey),
      ),
    ],
  );
}
