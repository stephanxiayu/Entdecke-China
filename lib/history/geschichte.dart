import 'package:china/videos/art798.dart';
import 'package:china/city_animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Geschichte extends StatefulWidget {
  @override
  _GeschichteState createState() => _GeschichteState();
}

class _GeschichteState extends State<Geschichte>
    with SingleTickerProviderStateMixin {
  PageController _pageController;
  int totalPage = 10;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
              page: 1,
              image: 'lib/assets/d10.png',
              title: 'Die Geschichte der Volksrepublik China',
              description: 'am 1. Oktober 1949, als Mao Zedong die Gründung der Volksrepublik China auf dem Tiananmen in Peking proklamierte. Die Kommunistische Partei Chinas war von Anfang an die einzige Regierungspartei auf dem chinesischen Festland. '),
          makePage(
              page: 2,
              image: 'lib/assets/d10.png',
              title: 'Die Geschichte der Volksrepublik China',
              description:
                  'Zuvor besiegte die Kommunistische Partei die Kuomintang und die Republik China, die sich dann nach Taiwan zurückzogen und dort blieben. Seit 1949 gab es fünf sogenannte "Überragende Führer": Mao Zedong (1949–1976), Deng Xiaoping (1978–1989), Jiang Zemin (1989–2002), Hu Jintao (2002–2012) und Xi Jinping (2012- ). Hua Guofeng war während der Übergangszeit (1976–1978) führend. Vier Verfassungen wurden 1954, 1975, 1978 bzw. 1982 veröffentlicht.'),
          makePage(
              page: 3,
              image: 'lib/assets/d10.png',
              title: 'Kunst in China',
              description:
                  "Sedona is regularly described as one of America's most beautiful places. Nowhere else will you find a landscape as dramatically colorful."),
          makePage(
              page: 4,
              image: 'lib/assets/ma4.jpg',
              title: 'Werke',
              description:
                  "Savannah, with its Spanish moss, Southern accents and creepy graveyards, is a lot like Charleston, South Carolina. But this city about 100 miles to the south has an eccentric streak."),
          makePage(
              page: 5,
              image: 'lib/assets/ma5.jpg',
              title: '798 Künstlervirtel',
              description:
                  "Savannah, with its Spanish moss, Southern accents and creepy graveyards, is a lot like Charleston, South Carolina. But this city about 100 miles to the south has an eccentric streak."),
          makePage(
              page: 6,
              image: 'lib/assets/ma6.jpg',
              title: 'HuTongs',
              description:
                  "Savannah, with its Spanish moss, Southern accents and creepy graveyards, is a lot like Charleston, South Carolina. But this city about 100 miles to the south has an eccentric streak."),
          makePage(
              page: 7,
              image: 'lib/assets/ma7.jpg',
              title: 'Chinesische Mauer',
              description:
                  "Savannah, with its Spanish moss, Southern accents and creepy graveyards, is a lot like Charleston, South Carolina. But this city about 100 miles to the south has an eccentric streak."),
          makePage(
              page: 8,
              image: 'lib/assets/ma8.jpg',
              title: 'TV Building',
              description:
                  "Savannah, with its Spanish moss, Southern accents and creepy graveyards, is a lot like Charleston, South Carolina. But this city about 100 miles to the south has an eccentric streak."),
          makePage(
              page: 9,
              image: 'lib/assets/ma9.jpg',
              title: 'Himmels Palast',
              description:
                  "Savannah, with its Spanish moss, Southern accents and creepy graveyards, is a lot like Charleston, South Carolina. But this city about 100 miles to the south has an eccentric streak."),
          makePage(
              page: 10,
              image: 'lib/assets/ma10.jpg',
              title: 'Atmosphere Bar',
              description:
                  "Savannah, with its Spanish moss, Southern accents and creepy graveyards, is a lot like Charleston, South Carolina. But this city about 100 miles to the south has an eccentric streak."),
        ],
      ),
    );
  }

  Widget makePage({image, title, description, page}) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
          0.3,
          0.9
        ], colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.2),
        ])),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    FadeAnimation(
                        2,
                        Text(
                          page.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )),
                    Text(
                      '/' + totalPage.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeAnimation(
                          1,
                          Text(
                            title,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                                height: 1.2,
                                fontWeight: FontWeight.bold),
                          )),
                      FadeAnimation(
                          2,
                          Padding(
                            padding: const EdgeInsets.only(right: 50),
                            child: Text(
                              description,
                              style: TextStyle(
                                  color: Colors.white.withOpacity(.7),
                                  height: 1.9,
                                  fontSize: 15),
                            ),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        child: TextButton(
                          onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ART(),
                        ),
                      ),
                          child: Text(
                            "Mehr erfahren",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        height: 30,
                      ),
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
