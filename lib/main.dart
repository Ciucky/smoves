import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomHomePage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CustomHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color(0xFFE7E7E9),
        child: Column(
          children: [
            Container(
              height: 100.0,
              color: Color(0xFF006FA6),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Your App Content Goes Here',
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}