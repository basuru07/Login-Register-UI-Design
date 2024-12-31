import 'package:flutter/material.dart';
import 'package:login_register_ui/createaccount.dart';
import 'package:login_register_ui/verification.dart';
import 'package:login_register_ui/verificationcode.dart';

class CreateAccount02 extends StatelessWidget {
  const CreateAccount02({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            // Wrap the body with SingleChildScrollView
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      "assets/undraw_adventure_map_hnin 2 (1).png",
                    ),
                  ),
                  Text(
                    "Get Started",
                    style: TextStyle(
                      fontSize: 29,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    "by creating a free account",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 30),

                  // Full name text field
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: "Full name",
                      labelStyle: TextStyle(color: Colors.white),
                      filled: true,
                      fillColor: Colors.grey[800],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: Icon(
                        Icons.person, // Replace with the desired icon
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),

                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: "Valid email",
                      labelStyle: TextStyle(color: Colors.white),
                      filled: true,
                      fillColor: Colors.grey[800],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: Icon(
                        Icons.email, // Replace with the desired icon
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),

                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: "Phone number",
                      labelStyle: TextStyle(color: Colors.white),
                      filled: true,
                      fillColor: Colors.grey[800],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: Icon(
                        Icons.smartphone_sharp, // Replace with the desired icon
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),

                  // Password text field
                  TextField(
                    obscureText: true,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: "Strong password",
                      labelStyle: TextStyle(color: Colors.white),
                      filled: true,
                      fillColor: Colors.grey[800],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: Icon(
                        Icons.lock, // Replace with the desired icon
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false, // Default value for checkbox
                        onChanged: (bool? value) {},
                        activeColor: Colors.blue, // Color when checked
                        checkColor: Colors.white, // Color of the checkmark
                      ),
                      Flexible(
                        child: RichText(
                          text: TextSpan(
                            text: "By checking the box you agree to our ",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                            children: [
                              TextSpan(
                                text: "Terms",
                                style: TextStyle(
                                  color: Color(0xFF6C63FF), // Highlighted color
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text: " and ",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              TextSpan(
                                text: "Conditions",
                                style: TextStyle(
                                  color: Color(0xFF6C63FF), // Highlighted color
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text: ".",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 70,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Verificationcode(), // Replace `NextPage` with your target page widget
                        ),
                      );
                    },
                    child: Container(
                      height: 50,
                      width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFF6C63FF),
                      ),
                      child: Center(
                        child: Text(
                          "NEXT",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already a member?",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  CreateAccount(), // Replace with your target page
                            ),
                          );
                        },
                        child: Text(
                          "Log In",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF6C63FF),
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
