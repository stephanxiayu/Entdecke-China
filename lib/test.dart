import 'package:china/startseite.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:twinkle_button/twinkle_button.dart';

class VideoTest extends StatefulWidget {
  @override
  _VideoTestState createState() => _VideoTestState();
}

class _VideoTestState extends State<VideoTest> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset("lib/assets/xx.mp4")
      ..initialize().then((_) {
        _controller.play();
        _controller.setLooping(true);

        setState(() {});
      });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      SizedBox.expand(
        child: FittedBox(
          fit: BoxFit.fill,
          child: SizedBox(
            width: _controller.value.size?.width ?? 0,
            height: _controller.value.size?.height ?? 0,
            child: VideoPlayer(_controller),
          ),
        ),
      ),
      Positioned(
          child: AppBar(
        title: Center(
            child: Text(
          "Entdecke China",
          style: TextStyle(fontSize: 35),
        )),
        backgroundColor: Colors.transparent,
        elevation: 8,
      )),


      Align(
        alignment: Alignment.bottomCenter,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 100,
                  child: TwinkleButton(
                    buttonTitle: Text(
                      'Starte deine Reise',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 17.0,
                      ),
                    ),
                    buttonColor: Colors.red,
                    onclickButtonFunction: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StartSeite(),
                      ),
                    ),
                  )),
            ]),
      ),
    ]));
    @override
    void dispose() {
      super.dispose();
      _controller.dispose();
    }
  }
}
