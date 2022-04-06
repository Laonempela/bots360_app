import 'package:flutter/material.dart';

import 'gallery/attractions.dart';
import 'gallery/destinations.dart';


class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery>  with SingleTickerProviderStateMixin{
  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('Bots 360 tourism'),
        centerTitle: true,
        bottom: TabBar(
          controller: controller,
          tabs: [
            Tab(text: 'Destinations'),
            Tab(text: 'Attractions'),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          Destinations(),
          Attractions(),
        ],
      ),
      );
}


