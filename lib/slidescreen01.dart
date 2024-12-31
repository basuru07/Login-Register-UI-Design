import 'package:flutter/material.dart';
import 'package:login_register_ui/slidescreen02.dart';

class Slidescreen01 extends StatelessWidget {
  const Slidescreen01({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        // Design the Body Part
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset("assets/Group 32.png"),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Explore the",
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "World easily",
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "To your desire",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            SizedBox(height: 100),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 10,
                    width: 26,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFF6C63FF),
                    ),
                  ),
                  SizedBox(width: 12),
                  Container(
                    height: 10,
                    width: 26,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 12),
                  Container(
                    height: 10,
                    width: 26,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Slidescreen02()),
                      );
                    },
                    icon: Icon(Icons.skip_next),
                    color: Colors.white, // Optional, for better contrast
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
