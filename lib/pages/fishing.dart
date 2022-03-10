import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
class Fishing extends StatelessWidget {
  const Fishing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Bots 360 tourism'),
      centerTitle: true,
    ),

    );
  }

  class GameDrive extends StatefulWidget {
    const GameDrive({Key? key}) : super(key: key);

    @override
    State<GameDrive> createState() => _GameDriveState();
  }

  class _GameDriveState extends State<GameDrive> {
  Color mainColor = const Color(0xFF1A11CE);
  //stream video from url
  String dataSource = "videos/demo.mp4";
  //video player controller
  VideoPlayerController? _controller;
  // initialize controller
  @override
  void initState(){
    super.initState();
    _controller = VideoPlayerController.network(dataSource)..initialize().then((_) {
      setState(() {});
    });
  }
  //
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Bots 360 tourism'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           _controller!.value.isInitialized
           ?AspectRatio(
             aspectRatio: _controller!.value.aspectRatio,
             child: VideoPlayer(_controller!),)
               :Container(),
            //video progress indicator
            VideoProgressIndicator(
              _controller!,
              allowScrubbing: true,
              padding: const EdgeInsets.all(0.0),
            ),
            //button controller
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: () {},
                    icon: const Icon(Icons.skip_previous),
                    color: Colors.black,
                  ),
                  IconButton(onPressed: () {
                    _controller!.value.isPlaying
                        ?_controller!.pause()
                        :_controller!.play();
                  },
                    icon: const Icon(Icons.play_arrow),
                    color: Colors.black,
                  ),
                  IconButton(onPressed: () {},
                    icon: const Icon(Icons.skip_next),
                    color: Colors.black,
                  ),
                ],
            ),
            const Padding(
              padding: EdgeInsets.all(18.0),
            child: Text("Self drive Botswana",
            style: TextStyle(color: Colors.black,fontSize: 28.0, fontWeight: FontWeight.bold),),
            ),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text("Self drive Botswana, at the comfort of your own pace traverse through this wild and unspoilt land. Self driving in Botswana is an experience on its own. You will need a 4x4 vehicle, a high lift jack, a tow rope plenty of water and fuel and food. Take note that a large percent of the area you will cover will not have cellphone reception.",
                style: TextStyle(color: Colors.black,fontSize: 16.0, fontWeight: FontWeight.normal),),
            ),
          ],
        ),
      );
    }
  }







