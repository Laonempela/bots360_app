import 'package:flutter/material.dart';

class AdminView extends StatefulWidget {
  const AdminView({Key? key}) : super(key: key);

  @override
  State<AdminView> createState() => _AdminViewState();
}

class _AdminViewState extends State<AdminView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title : Text('View all 360 video'),
        ),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                  'Read data from database',
                  style: TextStyle(fontSize:20, fontWeight: FontWeight.w600),
                  ),
                  Container(
                    height: 250,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index){
                        return Text('Name: Game Drive,'
                            '\nLocation: 25.93089727824914, 24.659376508091096'
                            '\nDescription: There is strict control over driving in the official national parks and reserves, with off-roading and night driving prohibited but this does not prevent spectacular s'
                            '\nLink: https://www.youtube.com/watch?v=hTDmijcJfcw');
                      },
                    ),
                  )
                ],
              ),
            )
    );
  }
}
