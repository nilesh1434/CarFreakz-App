import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/material.dart';

class videoPlayer1 extends StatefulWidget {
  @override
  _videoPlayer1State createState() => _videoPlayer1State();
}

class _videoPlayer1State extends State<videoPlayer1> {
  late YoutubePlayerController _controller1;

  @override
  void initState() {
    super.initState();

    const url = "https://www.youtube.com/watch?v=C_E3bSFi8lI";


    _controller1 = YoutubePlayerController(
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
      controller: _controller1,
    ),
    builder: (context, player) => Scaffold(
      appBar: AppBar(title: Text("Ferrari LaFerrari"),),
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
    _controller1.dispose();
  }
}