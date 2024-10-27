import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/material.dart';

class videoPlayer4 extends StatefulWidget {
  @override
  _videoPlayer4State createState() => _videoPlayer4State();
}

class _videoPlayer4State extends State<videoPlayer4> {
  late YoutubePlayerController _controller4;

  @override
  void initState() {
    super.initState();

    const url = "https://www.youtube.com/watch?v=7ts_j5Pmwb0";

    _controller4 = YoutubePlayerController(
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
      controller: _controller4,
    ),
    builder: (context, player) => Scaffold(
      appBar: AppBar(title: Text("Aston Martin Vulcan"),),
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
    _controller4.dispose();
  }
}
