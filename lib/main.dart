import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AnimationApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Hide&Show Animation',
          ),
          centerTitle: true,
        ),
        body: Animation(),
      ),
    );
  }
}

class Animation extends StatefulWidget {
  @override
  _AnimationState createState() => _AnimationState();
}

class _AnimationState extends State<Animation> {
  String name = "Show details";
  double opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network("https://raw.githubusercontent.com/flutter/website/master/src/images/owl.jpg"),
          TextButton(
              onPressed: () {
                setState(() {
                  if (name == "Show details") {
                    opacity = 1.0;
                    name = "Hide details";
                  } else {
                    opacity = 0.0;
                    name = "Show details";
                  }
                });
              },
              child: Text(name)),
          AnimatedOpacity(
            opacity: opacity,
            duration: Duration(seconds: 1),
            child: Column(
              children: [
                Text(
                  "Type : Owl",
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Age : 39",
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Employment : None",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}