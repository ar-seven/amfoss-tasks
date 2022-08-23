
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //keep track of page in page view
  PageController _controller = PageController();
  //last page
  bool lastpage = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:   Scaffold(
        body: DefaultTabController(
          length: 4,
          child: Scaffold(
              body: Stack(
            children: [
              PageView(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    lastpage = (index == 3);
                  });
                },
                children: [
                  Scaffold(
                    backgroundColor: Colors.brown[100],
                    body: Padding(
                      padding: EdgeInsets.fromLTRB(30, 90, 10, 0),
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
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Welcome to yoga world',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
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
                      padding: EdgeInsets.fromLTRB(30, 70, 10, 0),
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
                          SizedBox(
                            height: 20,
                          ),
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
                      padding: EdgeInsets.fromLTRB(30, 70, 50, 0),
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
                          SizedBox(
                            height: 20,
                          ),
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
                      padding: EdgeInsets.fromLTRB(30, 40, 10, 0),
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
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'The longest journey of any person\nis the journey inward',
                            style: TextStyle(
                              fontSize: 22,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              //down bar
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      children: [
                        //skip
                        if (!lastpage)
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                                onTap: () {
                                  _controller.jumpToPage(3);
                                },
                                child: Text(
                                  'Skip',
                                  style: (TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18)),
                                  textAlign: TextAlign.center,
                                )),
                          )
                        else
                          Expanded(
                              flex: 1,
                              child: SizedBox(
                                width: 10,
                              )),

                        //dots animation
                        Expanded(
                            flex: 1,
                            child: SmoothPageIndicator(
                                controller: _controller, count: 4)),

                        //next button
                        if (lastpage)
                          Expanded(
                            flex: 1,
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed("/mytabs");
                              },
                              child: Text("hi"),
                            )
                          )
                        else
                          Expanded(
                              flex: 1,
                              child: SizedBox(
                                width: 10,
                              ))
                      ],
                    )),
              )
            ],
          )),
        ),
      )
    );
  }

}

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Text('home'),
      ),
    );
  }
}
