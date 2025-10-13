import 'package:flutter/material.dart';

void main() {
  runApp(NavigationGestureApp());
}

class NavigationGestureApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigation & Gestures Demo",
      // Named routes
      routes: {
        '/': (context) => HomePage(),
        '/second': (context) => SecondPage(),
      },
      initialRoute: '/',
    );
  }
}

// Home Page
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Navigation Button
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              child: Text("Go to Second Page"),
            ),
            SizedBox(height: 20),
            // Gesture Example
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Container Tapped!")),
                );
              },
              onDoubleTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Double Tapped!")),
                );
              },
              onLongPress: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Long Pressed!")),
                );
              },
              child: Container(
                width: 150,
                height: 100,
                color: Colors.blueAccent,
                child: Center(
                  child: Text(
                    "Tap / Double Tap / Long Press",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Second Page
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context); // Go back to Home
          },
          child: Text("Go Back"),
        ),
      ),
    );
  }
}
