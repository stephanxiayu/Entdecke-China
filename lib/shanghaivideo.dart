import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ShanghaiVideo extends StatefulWidget {
  ShanghaiVideo({Key key, this.title, }) : super(key: key);

  final String title;


  @override
  _ShanghaiVideoState createState() => _ShanghaiVideoState();
}

class _ShanghaiVideoState extends State<ShanghaiVideo> {
  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId:  'gm5pku2VddU', // id youtube video
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
