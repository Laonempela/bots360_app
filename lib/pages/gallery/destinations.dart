import 'package:flutter/material.dart';
class Destinations extends StatefulWidget {
  const Destinations({Key? key}) : super(key: key);

  @override
  State<Destinations> createState() => _DestinationsState();
}

class _DestinationsState extends State<Destinations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget> [
          Container(
            child: Card(
            elevation : 5.0,
              child: Column(
                children: <Widget>[
                  Image.network("https://images.pexels.com/photos/6790591/pexels-photo-6790591.jpeg?cs=srgb&dl=pexels-lelani-badenhorst-6790591.jpg&fm=jpg",
                  height: 150.0,
                  width: 100.0,
                  fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 5.0,),

                  const Text("\$Gaborone",
                  style: TextStyle(
                      fontSize: 20,
                    color: Colors.blue
                  ))
                ],
              ),
            )
          ),
          Container(
              child: Card(
                elevation : 5.0,
                child: Column(
                  children: <Widget>[
                    Image.network("https://images.pexels.com/photos/6790591/pexels-photo-6790591.jpeg?cs=srgb&dl=pexels-lelani-badenhorst-6790591.jpg&fm=jpg",
                      height: 150.0,
                      width: 100.0,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 5.0,),

                    const Text("\$Gaborone",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue
                        ))
                  ],
                ),
              )
          ),
          Container(
              child: Card(
                elevation : 5.0,
                child: Column(
                  children: <Widget>[
                    Image.network("https://images.pexels.com/photos/6790591/pexels-photo-6790591.jpeg?cs=srgb&dl=pexels-lelani-badenhorst-6790591.jpg&fm=jpg",
                      height: 150.0,
                      width: 100.0,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 5.0,),

                    const Text("\$Gaborone",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue
                        ))
                  ],
                ),
              )
          ),
          Container(
              child: Card(
                elevation : 5.0,
                child: Column(
                  children: <Widget>[
                    Image.network("https://images.pexels.com/photos/6790591/pexels-photo-6790591.jpeg?cs=srgb&dl=pexels-lelani-badenhorst-6790591.jpg&fm=jpg",
                      height: 150.0,
                      width: 100.0,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 5.0,),

                    const Text("\$Gaborone",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue
                        ))
                  ],
                ),
              )
          ),
          Container(
              child: Card(
                elevation : 5.0,
                child: Column(
                  children: <Widget>[
                    Image.network("https://images.pexels.com/photos/6790591/pexels-photo-6790591.jpeg?cs=srgb&dl=pexels-lelani-badenhorst-6790591.jpg&fm=jpg",
                      height: 150.0,
                      width: 100.0,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 5.0,),

                    const Text("\$Gaborone",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue
                        ))
                  ],
                ),
              )
          ),
          Container(
              child: Card(
                elevation : 5.0,
                child: Column(
                  children: <Widget>[
                    Image.network("https://images.pexels.com/photos/6790591/pexels-photo-6790591.jpeg?cs=srgb&dl=pexels-lelani-badenhorst-6790591.jpg&fm=jpg",
                      height: 150.0,
                      width: 100.0,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 5.0,),

                    const Text("\$Gaborone",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue
                        ))
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}

    