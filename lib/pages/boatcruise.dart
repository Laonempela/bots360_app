import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class BoatCruise extends StatefulWidget {
  const BoatCruise({Key? key}) : super(key: key);

  @override
  State<BoatCruise> createState() => _BoatCruiseState();
}

class _BoatCruiseState extends State<BoatCruise> {
  late YoutubePlayerController controller;
  @override
  void initState() {
    super.initState();
    const url = 'https://www.youtube.com/watch?v=hTDmijcJfcw';
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
        appBar: AppBar(title: const Text("Boat Cruise")),
        body: Column(
          children: [
            player,

            Column(mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text("Take a river cruise or a boating safari experience nature at its best interaction- the river, the animas and the sunset! This activity is available in the Chobe river, Okavango Delta, Pan Handle and other areas in Botswana with a river ecsystem ",
                    style: TextStyle(color: Colors.black,fontSize: 16.0, fontWeight: FontWeight.normal),),
                ),
              ],
            ),
          ],
        ),
      )
  );
}


