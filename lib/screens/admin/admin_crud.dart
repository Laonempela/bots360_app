import 'package:flutter/material.dart';

import 'admin_360.dart';
import 'admin_view360.dart';

class AdminCrud extends StatefulWidget {
  const AdminCrud({Key? key}) : super(key: key);

  @override
  State<AdminCrud> createState() => _AdminCrudState();
}

class _AdminCrudState extends State<AdminCrud> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title : Text('Add 360 video'),
    ),
    body: ListView (
    padding: EdgeInsets.all(16),
    children: <Widget>[
    const SizedBox(height: 32),
    ElevatedButton(
    onPressed: () {Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const AdminView()),);
        }, child: Text('View')),
      const SizedBox(height: 32),
      ElevatedButton(
          onPressed: () {Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Admin360()),);
          }, child: Text('Add')),
      const SizedBox(height: 32),
      ElevatedButton(
          onPressed: () {Navigator.pop(context);}, child: Text('Update')),
      const SizedBox(height: 32),
      ElevatedButton(
          onPressed: () {Navigator.pop(context);}, child: Text('Delete')),
    ],
    )
    );
  }
}
