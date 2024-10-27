import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/material.dart';

class videoPlayer2 extends StatefulWidget {
  @override
  _videoPlayer2State createState() => _videoPlayer2State();
}

class _videoPlayer2State extends State<videoPlayer2> {
  late YoutubePlayerController _controller2;

  @override
  void initState() {
    super.initState();

    const url = "https://www.youtube.com/watch?v=OL_eIZjiLUk";


    _controller2 = YoutubePlayerController(
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
      controller: _controller2,
    ),
    builder: (context, player) => Scaffold(
      appBar: AppBar(title: Text("McLaren P1"),),
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
    _controller2.dispose();
  }
}