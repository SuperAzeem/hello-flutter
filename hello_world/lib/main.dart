import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import './sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var sizeHeight = size.height;
    var sizeWidth = size.width;
    var heightSignupButton = sizeHeight / 6;

    return Scaffold(
      /*
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      */
      body: Center(
        child: Container(
          width: sizeWidth,
          height: sizeHeight,
          child: Stack(
            children: [
              Container(
                width: sizeWidth,
                height: sizeHeight,
                child: Image.asset(
                  // color: Colors.black.withOpacity(0.15),
                  "assets/pexels-valeria-boltneva-580612.jpg",
                  fit: BoxFit.cover,
                  // opacity: ,
                ),
                // color: Colors.black,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 275),
                      Text(
                        "Tasty\nBurger",
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 75,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(height: heightSignupButton),
                  Padding(
                    padding: EdgeInsets.only(left: 35, right: 15),
                    child: Container(
                      height: 125,
                      width: sizeWidth,
                      color: Colors.black.withOpacity(0.5),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              SizedBox(height: 60),
                              Container(
                                color: Colors.amber.withOpacity(0.75),
                                height: 5,
                                width: sizeWidth / 1.5,
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Container(
                                color: Colors.amber.withOpacity(0.75),
                                height: 5,
                                width: sizeWidth / 1.5,
                              ),
                            ],
                          ),
                          Container(
                            margin: null,
                            child: Text(
                              "Good food\nTasty food",
                              style: GoogleFonts.raleway(
                                fontSize: 50,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              InkWell(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => SignUpPage(),
                    ),
                  ),
                },
                child: Container(
                  margin: EdgeInsets.only(
                    top: sizeHeight / 1.25,
                    // bottom: 200,
                    right: 30,
                    left: 30,
                  ),
                  width: sizeWidth,
                  height: sizeHeight / 7,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.ralewayDots(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
