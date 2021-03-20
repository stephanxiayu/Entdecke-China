import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Hongkong extends StatefulWidget {
  @override
  _HongkongState createState() => _HongkongState();
}

class _HongkongState extends State<Hongkong> {
  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'gYO1uk7vIcc', // id youtube video
      flags: YoutubePlayerFlags(
        mute: false,
        forceHD: true,
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
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
            ]));
  }
}
