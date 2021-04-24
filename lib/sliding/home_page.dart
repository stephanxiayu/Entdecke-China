import 'package:china/sliding/main_image_widget.dart';
import 'package:china/sliding/tab_widget.dart';

import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SlidingUpPanel(
          panelBuilder: (scrollController) => buildSlidingPanel(
            scrollController: scrollController,
          ),
          body: MainImageWidget(),
        ),
      );
  Widget buildSlidingPanel({@required ScrollController scrollController}) =>
      Scaffold(
          appBar: AppBar(
            title: Center(child: Text("Explore Shanghai")),
            backgroundColor: Colors.transparent,
            elevation: 10,
            automaticallyImplyLeading: false,
          ),
          body: TabWidget(scrollController: scrollController));
}
