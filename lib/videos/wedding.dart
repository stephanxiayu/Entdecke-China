import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Wedding extends StatefulWidget {
  Wedding({Key key, this.title, }) : super(key: key);

  final String title;


  @override
  _WeddingState createState() => _WeddingState();
}

class _WeddingState extends State<Wedding> {
  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId:  '3hVFPohascs', // id youtube video
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
          children: <Widget>[
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.black,
             
            ), 
            ],
        ),
      ),
    );
  }
}
