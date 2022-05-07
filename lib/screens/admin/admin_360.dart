import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Admin360 extends StatefulWidget {
  const Admin360({Key? key}) : super(key: key);

  @override
  State<Admin360> createState() => _Admin360State();
}

class _Admin360State extends State<Admin360> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('Add 360 video'),
      ),
      body: ListView (
        padding: EdgeInsets.all(16),
        children: <Widget>[
            TextField(
              decoration: decoration('Name'),
            ),
            const SizedBox(height: 24),
          TextField(
            decoration: decoration('Description'),
          ),
    const SizedBox(height: 24),
    TextField(
    decoration: decoration('Link'),
    ),
    const SizedBox(height: 24),
    TextField(
    decoration: decoration('Location')
    ),
          const SizedBox(height: 32),
          ElevatedButton(
              onPressed: () {Navigator.pop(context);}, child: Text('Create'))
        ],
      )
    );
  }
  InputDecoration decoration (String label) => InputDecoration(
    labelText:label,
    border: const OutlineInputBorder(),
  );

  Future create360({required String name}) async{
  final docUser = FirebaseFirestore.instance.collection('map').doc('my-id');
  final json = {
    'address' : name,
    //'location' : LatLng(20.0,20.0),
  };
  await docUser.set(json);
  }
}

