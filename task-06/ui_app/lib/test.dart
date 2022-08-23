import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const TabBarDemo());
}


class TabBarDemo extends StatefulWidget {
  const TabBarDemo({super.key});

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(

          body: TabBarView(
            children: [
              Scaffold(
                backgroundColor: Colors.brown[100],
                body: Padding(
                  padding: EdgeInsets.fromLTRB(30,90,10,0),
                  child: Column(
                    children: [
                      Image.asset('resources/page1.png'),
                      SizedBox(height: 30),
                      Text(
                        'YOGA SURGE',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text(
                        'Welcome to yoga world',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text(
                        'Inhale the future, exhale the past',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Scaffold(
                backgroundColor: Colors.brown[100],
                body: Padding(
                  padding: EdgeInsets.fromLTRB(30,70,10,0),
                  child: Column(
                    children: [
                      Image.asset('resources/page2.png'),
                      SizedBox(height: 20),
                      Text(
                        'Helathy Freaks Exercises',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text(
                        'Letting go is the hardest asana',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),

                    ],
                  ),
                ),

              ),
              Scaffold(
                backgroundColor: Colors.brown[100],
                body: Padding(
                  padding: EdgeInsets.fromLTRB(30,40,10,0),
                  child: Column(
                    children: [
                      Image.asset('resources/page3.png'),
                      SizedBox(height: 25),
                      Text(
                        'Cycling',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text(
                        'You cannot always control what\ngoes on outside. But you can\nalways control what goes on inside',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Scaffold(
                backgroundColor: Colors.brown[100],
                body: Padding(
                  padding: EdgeInsets.fromLTRB(30,40,10,0),
                  child: Column(
                    children: [
                      Image.asset('resources/page4.png'),
                      SizedBox(height: 25),
                      Text(
                        'Meditation',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text(
                        'The longest journey of any person\nis the journey inward',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),bottomNavigationBar: Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: new DotsIndicator(
                  dotsCount: 4,
                  position: 0,
                  decorator: DotsDecorator(
                    size: const Size.square(9.0),
                    activeSize: const Size(18.0, 9.0),
                    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//
// Expanded(
// child: Padding(
// padding: const EdgeInsets.all(26.0),
// child: Align(
// alignment: Alignment.bottomCenter,
// child:
// ),
// ),
// )