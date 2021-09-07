import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Mauer extends StatefulWidget {


  @override
  _MauerState createState() => _MauerState();
}

class _MauerState extends State<Mauer> {
YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'EotbKqZmBuY', // id youtube video
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        forceHD: true,
      ));


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
                  child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      YoutubePlayer(
                        controller: _controller,
                        showVideoProgressIndicator: true,
                        progressIndicatorColor: Colors.black,
                      ),
                    ],
                  ),
                ),
              ]),
        ));
    
  }
}