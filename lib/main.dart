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
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 100.0,
                  color: Color(0xFF006FA6),
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {
                              // Add navigation logic here
                            },
                            icon: Icon(Icons.arrow_back_ios_new, size: 16),
                            color: Colors.white,
                            padding: EdgeInsets.only(top: 4),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 16),
                            child: Text(
                              'Bac',
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 20, bottom: 10),
                          child: Text(
                            'Lakeside Coffee Shop',
                            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
            Positioned(
              top: 50,
              left: 20,
              child: Image.asset(
                'assets/my_image.png',
                height: 150,
                width: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
