
import 'package:china/menschen/ma_yun.dart';
import 'package:china/menschen/xin_li.dart';

import 'package:china/wedding.dart';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MenschenUebersicht extends StatefulWidget {
  @override
  _MenschenUebersichtState createState() => _MenschenUebersichtState();
}

class _MenschenUebersichtState extends State<MenschenUebersicht> {
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
    return Scaffold( body:  Stack(children: <Widget>[
     
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
      ),
      
      Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                 
                    Center(
                      child: TextButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MaYun(),
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(width: 3, color: Colors.white),
                          ),
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Center(
                            child: Text(
                              "Ma Yun",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ]),
            ),
            Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: TextButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => XinLi(),
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(width: 3, color: Colors.white),
                          ),
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Center(
                            child: Text(
                              "Xin Lin",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ]),
            ),
            Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: TextButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Wedding(),
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(width: 3, color: Colors.white),
                          ),
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Center(
                            child: Text(
                              "Hochzeit in China",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ]),
            ),
           
            
            ]),
             ]) 
      
    );
     @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  }
}