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
        // Ensure the first frame is shown after the video is initialized.
        setState(() {});
      });
  }



  @override
  Widget build(BuildContext context) => Scaffold(
       body: Stack(children: <Widget>[
      // TODO 7: Add a SizedBox to contain our video.
      SizedBox.expand(
        child: FittedBox(
          // If your background video doesn't look right, try changing the BoxFit property.
          // BoxFit.fill created the look I was going for.
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