import 'package:flutter/material.dart';
void main() {
  runApp(MyBetterBarChartApp());
}
class MyBetterBarChartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Better Manual Bar Chart",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Icons, Images & Bar Chart"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Icon Example
              Icon(Icons.star, color: Colors.orange, size: 50),
              SizedBox(height: 20),
              Image.network(
         "https://flutter.dev/assets/homepage/carousel/slide_1-bg-4c6fcef17b7b52c57d205c3bd6c3a1e9a0f7a31c2a8b3bf3f1e6c2d84cb799b3.jpg",
                height: 150,
              ),
              SizedBox(height: 20),
              Text(
                "Improved Bar Chart",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Container(
                height: 150,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 50,
                            color: Colors.blue,  ),
                          SizedBox(height: 5),
                          Text("3")     ], ),  ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 80,
                            color: Colors.green,
                          ),
                          SizedBox(height: 5),
                          Text("5")
                        ],  ),   ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 30,
                            color: Colors.orange,
                          ),
                          SizedBox(height: 5),
                          Text("2")  ],  ),    ),    ],  ), ), ],  ),),      ),    );  }}
