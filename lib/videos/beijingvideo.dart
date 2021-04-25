import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class BeijingVideo extends StatefulWidget {
  BeijingVideo({Key key, this.title, }) : super(key: key);

  final String title;


  @override
  _BeijingVideoState createState() => _BeijingVideoState();
}

class _BeijingVideoState extends State<BeijingVideo> {
  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId:  'PTcftzMt0mE', // id youtube video
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
