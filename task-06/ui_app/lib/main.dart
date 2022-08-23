
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(MaterialApp(
    home: IntroductionPage(),
  ));
}

class IntroductionPage extends StatefulWidget {
  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  final controller = PageController();

  bool islastpage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 80),
        child: PageView(
          controller: controller,
          onPageChanged: (index) {
            if (index + 1 == 4) {
              setState(() {
                islastpage=true;
              });
            } else {
              setState(() {
                islastpage=false;
              });
            }
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
      ),
      bottomSheet: Container(
        color: Colors.brown[100],
        padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
        height: 80,
        child: Container(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  //skip
                  if (!islastpage)
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                          onTap: () {
                            controller.jumpToPage(3);
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
                          width:1,
                        )),

                  //dots animation
                  Expanded(
                      flex: 1,
                      // child: Center(
                      //   child: SmoothPageIndicator(
                      //       controller: controller, count: 4, ),
                      // )
                      child: SmoothPageIndicator(
                        controller: controller,
                        count:  4,
                        effect:  ExpandingDotsEffect(
                            dotColor:  Colors.grey,
                            activeDotColor:  Colors.black

                        ),
                      ),
                  ),

                  //next button
                  if (islastpage)
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(new MaterialPageRoute(builder:
                                (BuildContext context) => new Welcome()));
                          },
                          child: Text(
                            'Get Started',
                            style: (TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                            textAlign: TextAlign.center,
                          )),
                    )
                  else
                    Expanded(
                        flex: 1,
                        child: SizedBox(
                          width: 1,
                        ))
                ],
              ),
            ))
        ),
      );
  }
}



class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[100],
        title: Text('Welcome',
            style: (TextStyle(
              fontSize: 25
            )),
            )

      ),
      body: Scaffold(
        backgroundColor: Colors.brown[50],
        body: Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: Column(
              children: [
                Image.asset('resources/welcome.png'),
                SizedBox(height: 30),
                Text(
                  'R ARAVIND',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'I just finished my first year as an AIE student. I am a passionate programmer. I am into developing new products using much of my creativity. As I was into developing and making a product useful to the world, I had to quit Bi0s for my passion. Follow your passion, Right!. I had difficulty at initial process of learning flutter and it took me quite a time to get back to learning as I was having some major health issues. After some basics tutorial from the channel TheNetNinja, I was set to google and develop quite easily. My hobbies include reading books, learning German, exercising and exploring tech news around the world. I am looking forward to try out different field in computer development and find the one that suits best for me.\n... ',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}