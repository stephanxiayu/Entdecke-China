
import 'package:china/startseite.dart';


import 'package:flutter/material.dart';



void main()=>
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData.dark(
        // Define the default brightness and colors.
     
       
      )));


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  PageController _pageController;
  int totalPage = 6;

  void _onScroll() {}
  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);

    super.initState();
    @override
    void dispose() {
      _pageController.dispose();
      super.dispose();
    }

    _pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
            page: 1,
            image: 'lib/assets/cn4.png',
            title: 'FIT.FANS',
          ),
          makePage(
            page: 2,
            image: 'lib/assets/cn7.png',
            title: "Training",
          ),
          makePage(
            page: 3,
            image: 'lib/assets/cn6.png',
            title: 'Ernährung',
          ),
          makePage(
              page: 4,
              image: 'lib/assets/mauer3.png',
              title: 'Find \nYour \nSelf'),
          makePage(
              page: 5,
              image: 'lib/assets/cn9.png',
              title: '  Create \nBeautiful \nMoments'),
                makePage(
              page: 6,
              image: 'lib/assets/cn10.png',
              title: '  Create \nBeautiful \nMoments'),
               
                
        ],
      ),
    );
  }

  Widget makePage({image, title, page}) {
    return Stack(children: [
      Container(
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
          child: Container(
              decoration: BoxDecoration(),
              child: Padding(
                  padding: EdgeInsets.all(40),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              page.toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold),
                            ),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  '/' + totalPage.toString(),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ))
                          ],
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                
                                  SizedBox(
                                    height: 170,
                                  ),
                                ]),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                       
                              SizedBox(height: 5),
                         
                         Center(child: Icon(Icons.more_horiz_rounded,size: 50,)),
                         SizedBox(height: 20,),
                         
                              TextButton(
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => StartSeite(),
                                  ),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                        width: 3, color: Colors.white),
                                  ),
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  child: Center(
                                    child: Text(
                                      "Entdecke China",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ]),
                      ),
                      ),
                      )
    ]);
  }
}
