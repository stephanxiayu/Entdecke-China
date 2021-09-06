import 'package:china/homepage.dart';
import 'package:china/homescreen.dart';
import 'package:china/menschen/menschen.dart';

import 'package:flutter/material.dart';
import 'package:twinkle_button/twinkle_button.dart';
import 'package:video_player/video_player.dart';

class StartSeite extends StatefulWidget {
  @override
  _StartSeiteState createState() => _StartSeiteState();
}

class _StartSeiteState extends State<StartSeite> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset("lib/assets/11.mp4")
      ..initialize().then((_) {
        _controller.play();
        _controller.setLooping(true);
        // Ensure the first frame is shown after the video is initialized.
        setState(() {});
      });
  }

  @override
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
      SingleChildScrollView(
          child: SizedBox(
        height: 100,
      )),
      Column(
          verticalDirection: VerticalDirection.down,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: TwinkleButton(
                        buttonWidth: 200,
                        buttonTitle: Text(
                          'Städte in China',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w300,
                            fontSize: 17.0,
                          ),
                        ),
                        buttonColor: Colors.transparent,
                        onclickButtonFunction: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                  ]),
            ),
            Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: TwinkleButton(
                        buttonWidth: 200,
                        buttonTitle: Text(
                          'Menschen in China',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w300,
                            fontSize: 17.0,
                          ),
                        ),
                        buttonColor: Colors.transparent,
                        onclickButtonFunction: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MenschenUebersicht(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                  ]),
            ),
            Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: TwinkleButton(
                        buttonWidth: 200,
                        buttonTitle: Text(
                          'Geschichte von China',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w300,
                            fontSize: 17.0,
                          ),
                        ),
                        buttonColor: Colors.transparent,
                        onclickButtonFunction: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StartSeite(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                  ]),
            ),
            Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: TwinkleButton(
                        buttonWidth: 200,
                        buttonTitle: Text(
                          'Sprache in China',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w300,
                            fontSize: 17.0,
                          ),
                        ),
                        buttonColor: Colors.transparent,
                        onclickButtonFunction: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StartSeite(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                  ]),
            ),
            SingleChildScrollView(
              child: Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                    Center(
                      child: TwinkleButton(
                        buttonWidth: 200,
                        buttonTitle: Text(
                          'Unis in China',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w300,
                            fontSize: 17.0,
                          ),
                        ),
                        buttonColor: Colors.transparent,
                        onclickButtonFunction: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StartSeite(),
                          ),
                        ),
                      ),
                    ),
                  ])),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: TwinkleButton(
                        buttonWidth: 200,
                        buttonTitle: Text(
                          'Dating in China',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w300,
                            fontSize: 17.0,
                          ),
                        ),
                        buttonColor: Colors.transparent,
                        onclickButtonFunction: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                  ]),
            ),
          ])
    ]));


  }}