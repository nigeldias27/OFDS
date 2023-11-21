import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ofds/main.dart';
import 'package:ofds/screens/deliveryHome.dart';
import 'package:ofds/screens/restaurantHome.dart';
import 'package:ofds/screens/signUp.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final name = TextEditingController();
  final pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Row(
                  children: [
                    Text(
                      "Login to",
                      style: GoogleFonts.catamaran(
                          fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Text(
                      " OFDS",
                      style: GoogleFonts.catamaran(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.deepPurple),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextField(
                  controller: name,
                  style: GoogleFonts.raleway(color: Colors.deepPurple),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.deepPurple.shade50,
                      focusColor: Colors.deepPurple.shade50,
                      hoverColor: Colors.deepPurple.shade50,
                      border: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.deepPurple.shade300)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.deepPurple.shade300)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.deepPurple.shade300)),
                      labelText: "Email",
                      labelStyle: GoogleFonts.raleway(
                          fontSize: 12, color: Colors.deepPurple.shade300)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: TextField(
                  controller: pass,
                  style: GoogleFonts.raleway(color: Colors.deepPurple),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.deepPurple.shade50,
                      focusColor: Colors.deepPurple.shade50,
                      hoverColor: Colors.deepPurple.shade50,
                      border: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.deepPurple.shade300)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.deepPurple.shade300)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.deepPurple.shade300)),
                      labelText: "Password",
                      labelStyle: GoogleFonts.raleway(
                          fontSize: 12, color: Colors.deepPurple.shade300)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: InkWell(
                  onTap: () {
                    if (name.text == 'r') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => RestaurantHome()));
                    } else if (name.text == 'd') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => DeliveryHome()));
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => MyHomePage(title: 0)));
                    }
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width - 32,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.deepPurple),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        "Login",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.raleway(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not registered?",
                    style: GoogleFonts.raleway(),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => SignUp()));
                    },
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.raleway(color: Colors.deepPurple),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
