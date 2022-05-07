import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'admin_crud.dart';
import '../home_page.dart';


class HomeView extends StatefulWidget {
  const HomeView({
    Key? key
  }) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Admin Panel '),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                  child: Text('Home'),
                  decoration: BoxDecoration(
                    color: Colors.purple,
                  )),
              const Divider(
                height: 1,
                thickness: 1,
              ),
              ListTile(
                leading: const Icon(Icons.account_circle),
                title: const Text('Profile'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Home()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Logout'),
                onTap: () {
                  showBanner();
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.read_more),
                title: const Text('Results'),
                onTap: () {
                  showBanner();
                  Navigator.pop(context);
                },
              )
            ],
          )),
      body: Stack(
        children:<Widget>[
          Column(

            children: <Widget>[
              const SizedBox(
                height:50,
              ),
              Flexible(
                child: GridView.count(
                    crossAxisSpacing: 10,
                    padding: const EdgeInsets.all(20),
                    mainAxisSpacing: 10,
                    primary: false,
                    children: <Widget>[
                      Container(
                          width: 100,
                          height: 100,
                          padding: const EdgeInsets.all(8),

                          child:  GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const AdminCrud()));
                            },
                            child:Card(
                                elevation: 2,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      CircleAvatar(
                                        backgroundColor: Colors.transparent,
                                        radius: 48.0,
                                        child: Image.asset('assets/images/360.jpg'),
                                      ),
                                      Expanded( child:TextButton(
                                          child: const Text('Manage 360 video'),
                                          style: TextButton.styleFrom(
                                            primary: Colors.purple,
                                          ),
                                          onPressed: () {
                                            // Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPage()));
                                          }),
                                      ),
                                    ])),
                          )
                      ),
                      Container(
                          width: 100,
                          height: 100,
                          padding: const EdgeInsets.all(8),
                          child:GestureDetector(
                            onTap: (){

                            },
                            child: Card(
                                elevation: 2,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      CircleAvatar(
                                        backgroundColor: Colors.transparent,
                                        radius: 48.0,
                                        child: Image.asset('assets/images/destination.jpg'),
                                      ),
                                      Expanded(child: TextButton(
                                          child: const Text('Manage Destinations'),
                                          style: TextButton.styleFrom(
                                            primary: Colors.purple,
                                          ),
                                          onPressed: () {

                                          }),
                                      )
                                    ])),)
                      ),
                      Container(
                          width: 100,
                          height: 100,
                          padding: const EdgeInsets.all(8),
                          child:GestureDetector(
                            onTap:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
                            } ,
                            child: Card(
                                elevation: 2,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      CircleAvatar(
                                        backgroundColor: Colors.transparent,
                                        radius: 48.0,
                                        child: Image.asset('assets/images/info.jpg'),
                                      ),
                                      Expanded(child:TextButton(
                                          child: const Text('Manage Travel Information'),
                                          style: TextButton.styleFrom(
                                            primary: Colors.purple,
                                          ),
                                          onPressed: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
                                          })
                                      ),
                                    ])),)
                      ),


                      Container(
                          width: 100,
                          height: 100,
                          padding: const EdgeInsets.all(8),
                          child:GestureDetector(
                            onTap: (){
                              //Navigator.push(
                              // context,
                              //MaterialPageRoute(
                              //  builder: (context) =>
                              //   const Map()));
                            },
                            child: Card(
                              elevation: 2,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      radius: 48.0,
                                      child: Image.asset('assets/images/acti.jpg'),
                                    ),
                                    Expanded(child:TextButton(
                                        child: const Text('Manage Activities'),
                                        style: TextButton.styleFrom(
                                          primary: Colors.purple,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                  const Home()));
                                        }),
                                    ),
                                  ]),
                            ),)),
                    ],
                    crossAxisCount: 2),
              )
            ],
          )
        ],
      ),
    );
  }

  void showBanner() =>
      ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.all(18),
          content: const Text('Are you sure you want to logout?'),
          actions: [
            TextButton(
              style: TextButton.styleFrom(primary: Colors.purple),
              onPressed: () {
                ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home()));
              },
              child: const Text('YES'),
            ),
            TextButton(
                style: TextButton.styleFrom(primary: Colors.purple),
                onPressed: () =>
                    ScaffoldMessenger.of(context).hideCurrentMaterialBanner(),
                child: const Text('NO'))
          ]));



}