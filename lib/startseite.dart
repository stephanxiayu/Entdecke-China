import 'package:china/homescreen.dart';
import 'package:flutter/material.dart';

class StartSeite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
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
                        child: TextButton(
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
                              border: Border.all(width: 3, color: Colors.white),
                            ),
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Center(
                              child: Text(
                                "Coole Städte in China",
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
                      SizedBox(height: 30),
                    ]),
              ),
              Container(
                child: TextButton(onPressed: () {}, child: Text("Menachen")),
              ),
              Container(
                child: TextButton(onPressed: () {}, child: Text("Geschichte")),
              ),
              Container(
                child: TextButton(onPressed: () {}, child: Text("Sprache")),
              ),
              Container(
                child: TextButton(onPressed: () {}, child: Text("Unis")),
              ),
            ]),
      ),
    );
  }
}
