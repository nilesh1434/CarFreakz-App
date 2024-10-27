import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:project4/videoPlayer.dart';
import 'package:project4/videoPlayer1.dart';
import 'package:project4/videoPlayer2.dart';
import 'package:project4/videoPlayer3.dart';
import 'package:project4/videoPlayer4.dart';
import 'package:project4/videoPlayer5.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project 4',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  // Intro Screen
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5), // 5 seconds animation
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SecondScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0.0, 0.0),
      color: Colors.black,
      child: SizedBox(
        width: 250.0,
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 50.0,
            fontFamily: 'Ariel',
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              FadeAnimatedText('Hi there!'),
              FadeAnimatedText('Welcome to CarFreakz'),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  // Main Screen
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 20,
        title: Row(
          children: <Widget>[
            const Text('CarFreakz'),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: ListView(
        padding: const EdgeInsets.all(6),
        children: [
          // Section with animation when tapped
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, anotherAnimation) {
                    return videoPlayer();
                  },
                  barrierColor: Colors.black,
                  transitionDuration: Duration(seconds: 3),
                  transitionsBuilder:
                      (context, animation, anotherAnimation, child) {
                    animation = CurvedAnimation(
                        curve: Curves.easeInOut, parent: animation);
                    return SlideTransition(
                      position:
                          Tween(begin: Offset(0.0, 1.0), end: Offset(0.0, 0.0))
                              .animate(animation),
                      child: child,
                    );
                  }));
            },
            child: Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.only(top: 10),
              child: FlipCard(
                direction: FlipDirection.HORIZONTAL,
                front: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.red,
                      ),
                    ),
                    Text(
                      'Formula 1 Car',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                back: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.red,
                      ),
                      child: Column(
                        children: <Widget>[
                          DefaultTextStyle(
                            style: const TextStyle(
                              fontSize: 15.0,
                              fontFamily: 'Ariel',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TyperAnimatedText(
                                    'F1 cars can accelerate from 0 to 160 km/h and brake to zero within 4 seconds | The average cost of a car is 7 million USD | Brake discs can reach 1,000 degrees Celsius | Each car consists of 80,000 components'),
                              ],
                              displayFullTextOnTap: true,
                              stopPauseOnTap: true, // to stop the typing font
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.all(11.0),
                                backgroundColor: Colors.white,
                                shape: const BeveledRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                textStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => videoPlayer()));
                              },
                              child: const Text('Watch Video'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          // Section with animation when tapped
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, anotherAnimation) {
                    return videoPlayer1();
                  },
                  barrierColor: Colors.black,
                  transitionDuration: Duration(seconds: 3),
                  transitionsBuilder:
                      (context, animation, anotherAnimation, child) {
                    animation = CurvedAnimation(
                        curve: Curves.easeInOut, parent: animation);
                    return SlideTransition(
                      position:
                          Tween(begin: Offset(0.0, 1.0), end: Offset(0.0, 0.0))
                              .animate(animation),
                      child: child,
                    );
                  }));
            },
            child: Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.only(top: 10),
              child: FlipCard(
                direction: FlipDirection.HORIZONTAL,
                front: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.red,
                      ),
                    ),
                    Text(
                      'Ferrari LaFerrari',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                back: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.red,
                      ),
                      child: Column(
                        children: <Widget>[
                          DefaultTextStyle(
                            style: const TextStyle(
                              fontSize: 15.0,
                              fontFamily: 'Ariel',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TyperAnimatedText(
                                    'Ferrari states that the car has a top speed of 352 km/h | In terms of acceleration, it can go 0–100 km/h (0–62 mph) in 2.6 seconds, 0–200 km/h (0–124 mph) in under 6.9 seconds, and 0–300 km/h (0–186 mph) in 15 seconds'),
                              ],
                              displayFullTextOnTap: true,
                              stopPauseOnTap: true,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.all(11.0),
                                backgroundColor: Colors.white,
                                shape: const BeveledRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                textStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => videoPlayer1()));
                              },
                              child: const Text('Watch Video'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          // Section with animation when tapped
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, anotherAnimation) {
                    return videoPlayer2();
                  },
                  barrierColor: Colors.black,
                  transitionDuration: Duration(seconds: 3),
                  transitionsBuilder:
                      (context, animation, anotherAnimation, child) {
                    animation = CurvedAnimation(
                        curve: Curves.easeInOut, parent: animation);
                    return SlideTransition(
                      position:
                          Tween(begin: Offset(0.0, 1.0), end: Offset(0.0, 0.0))
                              .animate(animation),
                      child: child,
                    );
                  }));
            },
            child: Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.only(top: 10),
              child: FlipCard(
                direction: FlipDirection.HORIZONTAL,
                front: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.red,
                      ),
                    ),
                    Text(
                      'McLaren P1',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                back: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.red,
                      ),
                      child: Column(
                        children: <Widget>[
                          DefaultTextStyle(
                            style: const TextStyle(
                              fontSize: 15.0,
                              fontFamily: 'Ariel',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TyperAnimatedText(
                                    'The McLaren P1 is a limited-edition performance supercar that first debuted at the 2012 Paris Motor Show | The P1 accelerates from 0–100 km/h (0–62 mph) in 2.8 seconds, 0–200 km/h (0–124 mph) in 6.8 seconds, and 0–300 km/h (0–186 mph) in 16.5 seconds, making it a full 5.5 seconds faster than the F1'),
                              ],
                              displayFullTextOnTap: true,
                              stopPauseOnTap: true,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.all(11.0),
                                backgroundColor: Colors.white,
                                shape: const BeveledRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                textStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => videoPlayer1()));
                              },
                              child: const Text('Watch Video'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          // Section with animation when tapped
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, anotherAnimation) {
                    return videoPlayer3();
                  },
                  barrierColor: Colors.black,
                  transitionDuration: Duration(seconds: 3),
                  transitionsBuilder:
                      (context, animation, anotherAnimation, child) {
                    animation = CurvedAnimation(
                        curve: Curves.easeInOut, parent: animation);
                    return SlideTransition(
                      position:
                          Tween(begin: Offset(0.0, 1.0), end: Offset(0.0, 0.0))
                              .animate(animation),
                      child: child,
                    );
                  }));
            },
            child: Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.only(top: 10),
              child: FlipCard(
                direction: FlipDirection.HORIZONTAL,
                front: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.red,
                      ),
                    ),
                    Text(
                      'Mercedes Benz AMG GT',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                back: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.red,
                      ),
                      child: Column(
                        children: <Widget>[
                          DefaultTextStyle(
                            style: const TextStyle(
                              fontSize: 15.0,
                              fontFamily: 'Ariel',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TyperAnimatedText(
                                    'Mercedes-Benz automobiles are tuned in a specific way and upgraded for additional power | These vehicles also provide extra-sporty handling and more stylish aesthetics | 0 to 60 in 2.9 seconds, Top speed of 196 mph'),
                              ],
                              displayFullTextOnTap: true,
                              stopPauseOnTap: true,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.all(11.0),
                                backgroundColor: Colors.white,
                                shape: const BeveledRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                textStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => videoPlayer1()));
                              },
                              child: const Text('Watch Video'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          // Section with animation when tapped
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, anotherAnimation) {
                    return videoPlayer4();
                  },
                  barrierColor: Colors.black,
                  transitionDuration: Duration(seconds: 3),
                  transitionsBuilder:
                      (context, animation, anotherAnimation, child) {
                    animation = CurvedAnimation(
                        curve: Curves.easeInOut, parent: animation);
                    return SlideTransition(
                      position:
                          Tween(begin: Offset(0.0, 1.0), end: Offset(0.0, 0.0))
                              .animate(animation),
                      child: child,
                    );
                  }));
            },
            child: Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.only(top: 10),
              child: FlipCard(
                direction: FlipDirection.HORIZONTAL,
                front: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.red,
                      ),
                    ),
                    Text(
                      'Aston Martin Vulcan',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                back: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.red,
                      ),
                      child: Column(
                        children: <Widget>[
                          DefaultTextStyle(
                            style: const TextStyle(
                              fontSize: 15.0,
                              fontFamily: 'Ariel',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TyperAnimatedText(
                                    '0-60 mph in 3 seconds | 7.0L V12 engine that achieves 820 hp and 575 lb-ft of torque and feather-light curb weight of 2,975 pounds | Used as Safety Car in Formula 1 races'),
                              ],
                              displayFullTextOnTap: true,
                              stopPauseOnTap: true,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.all(11.0),
                                backgroundColor: Colors.white,
                                shape: const BeveledRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                textStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => videoPlayer1()));
                              },
                              child: const Text('Watch Video'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          // Section with animation when tapped
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, anotherAnimation) {
                    return videoPlayer5();
                  },
                  barrierColor: Colors.black,
                  transitionDuration: Duration(seconds: 3),
                  transitionsBuilder:
                      (context, animation, anotherAnimation, child) {
                    animation = CurvedAnimation(
                        curve: Curves.easeInOut, parent: animation);
                    return SlideTransition(
                      position:
                          Tween(begin: Offset(0.0, 1.0), end: Offset(0.0, 0.0))
                              .animate(animation),
                      child: child,
                    );
                  }));
            },
            child: Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.only(top: 10),
              child: FlipCard(
                direction: FlipDirection.HORIZONTAL,
                front: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.red,
                      ),
                    ),
                    Text(
                      'Alfa Romeo 4C Spider',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                back: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.red,
                      ),
                      child: Column(
                        children: <Widget>[
                          DefaultTextStyle(
                            style: const TextStyle(
                              fontSize: 15.0,
                              fontFamily: 'Ariel',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TyperAnimatedText(
                                    'It is made from a single piece of carbon fiber, which is significantly lighter than aluminum, yet stronger than steel; seriously advanced stuff! Weighing in at just 65 kg, this design has a big positive impact on the power to weight ratio | 0 to 60 miles per hour dash will take just 4.1 seconds'),
                              ],
                              displayFullTextOnTap: true,
                              stopPauseOnTap: true,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.all(11.0),
                                backgroundColor: Colors.white,
                                shape: const BeveledRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                textStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => videoPlayer1()));
                              },
                              child: const Text('Watch Video'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
      // About Section which has description of the App
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              backgroundColor: Color.fromARGB(255, 148, 233, 12),
              title: Text('CarFreakz'),
              content: Container(
                height: 250.0,
                width: 250.0,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 8, 97, 0),
                    border: Border.all(
                      color: Colors.black,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 0, 255, 115),
                      Color.fromARGB(255, 0, 94, 47)
                    ]),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2.0,
                          offset: Offset(2.0, 2.0))
                    ]),
                child: Text(
                  'This is an app for all the car enthusiasts. To know fun facts about them, just click your desired car section. For more adrenalin, you can also watch the video by clicking "Watch Video" button. Have fun and go FAST! Always wear seatbelt and stay safe :)',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withOpacity(1.0),
                  ),
                ),
              ),
              actions: [
                TextButton(
                  child: Text('Back'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          );
        },
        label: const Text('About'),
        icon: const Icon(Icons.announcement_rounded),
        backgroundColor: Color.fromARGB(255, 0, 77, 139),
      ),
    );
  }
}
