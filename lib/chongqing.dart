import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Chongqing extends StatefulWidget {
  @override
  _ChongqingState createState() => _ChongqingState();
}

class _ChongqingState extends State<Chongqing> {
  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'O1eh1orEjYc', // id youtube video
      flags: YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        forceHD: true,
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
              child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
