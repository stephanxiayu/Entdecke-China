import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MainImageWidget extends StatefulWidget {
  @override
  _MainImageWidgetState createState() => _MainImageWidgetState();
}

class _MainImageWidgetState extends State<MainImageWidget> {
   VideoPlayerController _controller;


  @override
  void initState() {
    super.initState();
  
    _controller = VideoPlayerController.asset("lib/assets/ff.mp4")
      ..initialize().then((_) {
     
        _controller.play();
        _controller.setLooping(true);
      
        setState(() {});
      });
  }



  @override
  Widget build(BuildContext context) => Scaffold(
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
   ),          Positioned(child: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 8,
      )), ]));
           @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}