import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class BirdWatching extends StatefulWidget {
  const BirdWatching({Key? key}) : super(key: key);

  @override
  State<BirdWatching> createState() => _BirdWatchingState();
}

class _BirdWatchingState extends State<BirdWatching> {
  late YoutubePlayerController controller;
  @override
  void initState() {
    super.initState();
    const url = 'https://www.youtube.com/watch?v=eJ-UKREkXYw&list=WL&index=28&t=6s';
    controller = YoutubePlayerController(initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    );
  }

  @override
  void deactivate() {
    controller.pause();

    super.deactivate();
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => YoutubePlayerBuilder(
    player:YoutubePlayer(
      controller: controller,
    ),
    builder: (context, player) => Scaffold(
      appBar: AppBar(title: const Text("Bird Watching")),
      body: Column(
        children: [
          player,

          Column(mainAxisAlignment: MainAxisAlignment.center,
           children: const [
            Padding(
            padding: EdgeInsets.all(18.0),
            child: Text("Enjoy a superb birding experience in the Chobe, Makgadikgadi, Okavango Delta, Africa’s Largest Game reserve, Central Kalahari Game reserve. The services of specialist birding guides are available in Botswana to educate travelers in every journey of the diversity of the birds available in Botswana. The northern wetlands are the best places in Botswana to see the near-endemic Slaty Egrets, the endangered Wattled Cranes and the huge Pel’s Fishing Owls and harbour an unrivalled selection of herons, storks etc. From the world’s biggest bird (the Ostrich) to the heaviest flying bird (the Kori Bustard) to the most numerous of all birds (the Red-billed Quelea), Botswana has a truly impressive variety and quantity of bird species",
              style: TextStyle(color: Colors.black,fontSize: 16.0, fontWeight: FontWeight.normal),),
          ),
      ],
        ),
        ],
      ),
    )
    );
  }


