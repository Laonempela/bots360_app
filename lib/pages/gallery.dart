import 'package:bots360_app/widgets/hotel_carousel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/destination_carousel.dart';

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery>  with SingleTickerProviderStateMixin{
  int _selectedIndex = 0;
final List<IconData> _icons =[
  FontAwesomeIcons.plane,
  FontAwesomeIcons.bed,
  FontAwesomeIcons.personWalking,
  FontAwesomeIcons.personBiking,
];
 Widget _buildIcon(int index){
   return GestureDetector(
     onTap: (){
       setState(() {
         _selectedIndex = index;
       });
       },
   child: Container(
     height: 60.0,
   width: 60.0,
   decoration: BoxDecoration(
     color:_selectedIndex == index
         ?const Color(0xFFD8ECF1)
         :const Color(0xFFE7EBEE),
     borderRadius: BorderRadius.circular(30),
    ),
     child: Icon(
         _icons[index],
         size: 25.0,
         color: _selectedIndex == index
             ? Theme.of(context).primaryColor :
              const Color(0xFF84C1C4),
     ),
   ),
   );

 }
  @override
  Widget build(BuildContext context) => Scaffold(
    body: SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            const Padding(
                padding: EdgeInsets.only(left: 20.0, right: 120),
            child: Text('What would you like to find?',
                style:TextStyle(
                fontSize: 25.0,
                  fontWeight: FontWeight.bold,
            ),
            ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons.asMap().entries.map(
                    (MapEntry map) => _buildIcon(map.key),
              ).toList(),
            ),
            const SizedBox(height: 20.0),
            const DestinationCarousel(),
            const SizedBox(height: 20.0),
            const HotelCarousel()
        ],
      ),
    ),
  );
}


