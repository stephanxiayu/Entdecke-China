import 'package:china/homescreen.dart';


import 'package:flutter/material.dart';



void main()=>
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
       
      )));


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  PageController _pageController;
  int totalPage = 10;

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
                makePage(
              page: 7,
              image: 'lib/assets/cn16.png',
              title: '  Create \nBeautiful \nMoments'),
                makePage(
              page: 8,
              image: 'lib/assets/xinli7.jpg',
              title: '  Create \nBeautiful \nMoments'), 
               makePage(
              page: 9,
              image: 'lib/assets/cn9.png',
              title: '  Create \nBeautiful \nMoments'),
                makePage(
              page: 10,
              image: 'lib/assets/cn9.png',
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
                                  fontSize: 30,
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
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                       
                              SizedBox(height: 5),
                         
                              TextButton(
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(),
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
                                      "Entdecken",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 40,
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
