import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/material.dart';

class videoPlayer5 extends StatefulWidget {
  @override
  _videoPlayer5State createState() => _videoPlayer5State();
}

class _videoPlayer5State extends State<videoPlayer5> {
  late YoutubePlayerController _controller5;

  @override
  void initState() {
    super.initState();

    const url = "https://www.youtube.com/watch?v=r1KOIAwOe38";


    _controller5 = YoutubePlayerController(
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
      controller: _controller5,
    ),
    builder: (context, player) => Scaffold(
      appBar: AppBar(title: Text("Alfa Romeo 4C Spider"),),
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
    _controller5.dispose();
  }
}