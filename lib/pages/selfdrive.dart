import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class GameDrive extends StatefulWidget {
  const GameDrive({Key? key}) : super(key: key);

  @override
  State<GameDrive> createState() => _GameDriveState();
}

class _GameDriveState extends State<GameDrive> {
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
        appBar: AppBar(title: const Text("Game Drive")),
        body: ListView(
          shrinkWrap: true,
          children: [
            player,

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text("Botswana is one of the most sought after safari destinations in Africa with many diverse areas from deserts to lush delta grassland to forest, and a range of animal and bird species to be seen on game drives. Botswana has many parks, reserves and private concessions open to game drives and these all provide different and unique experiences. There is strict control over driving in the official national parks and reserves, with off-roading and night driving prohibited but this does not prevent spectacular sightings as the day drives are very productive.The private concession areas outside the parks and reserves provide opportunities for off -road driving and night drives although both activities are done in moderation. The highlights of game viewing in Botswana is a high number of predators in many areas; the ability to view animals from up close and pristine wilderness areas that can be enjoyed by using open vehicles for better viewing experience. Lion sightings are common and rare, depending in your location. Rhino tracking can be added to an itinerary on request.",
                    style: TextStyle(color: Colors.black,fontSize: 16.0, fontWeight: FontWeight.normal),),

                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text("There is strict control over driving in the official national parks and reserves, with off-roading and night driving prohibited but this does not prevent spectacular sightings as the day drives are very productive.The private concession areas outside the parks and reserves provide opportunities for off -road driving and night drives although both activities are done in moderation. The highlights of game viewing in Botswana is a high number of predators in many areas; the ability to view animals from up close and pristine wilderness areas that can be enjoyed by using open vehicles for better viewing experience. Lion sightings are common and rare, depending in your location. Rhino tracking can be added to an itinerary on request.",
                    style: TextStyle(color: Colors.black,fontSize: 16.0, fontWeight: FontWeight.normal),),

                ),
              ],
            ),
          ],
        ),
      )
  );
}


