import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/material.dart';

class videoPlayer3 extends StatefulWidget {
  @override
  _videoPlayer3State createState() => _videoPlayer3State();
}

class _videoPlayer3State extends State<videoPlayer3> {
  late YoutubePlayerController _controller3;

  @override
  void initState() {
    super.initState();

    const url = "https://www.youtube.com/watch?v=TTrk1txVRuc";


    _controller3 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        loop: false,
      ),
    );


  }



  @override
  Widget build(BuildContext context) { return YoutubePlayerBuilder(
    player: YoutubePlayer(
      controller: _controller3,
    ),
    builder: (context, player) => Scaffold(
      appBar: AppBar(title: Text("Mercedes Benz AMG GT"),),
      body: ListView(
        children: [
          player,
        ],
      ),
    ),
  );
  }

  @override
  void dispose() {
    super.dispose();
    _controller3.dispose();
  }
}