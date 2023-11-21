import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 48.0, 0, 32),
                      child: Row(
                        children: [
                          Text(
                            "Sign Up to",
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
                      padding: const EdgeInsets.only(bottom: 24.0),
                      child: TextField(
                        controller: name,
                        style: GoogleFonts.raleway(color: Colors.deepPurple),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.deepPurple.shade50,
                            focusColor: Colors.deepPurple.shade50,
                            hoverColor: Colors.deepPurple.shade50,
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.deepPurple.shade300)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.deepPurple.shade300)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.deepPurple.shade300)),
                            labelText: "Name",
                            labelStyle: GoogleFonts.raleway(
                                fontSize: 12,
                                color: Colors.deepPurple.shade300)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 24.0),
                      child: TextField(
                        controller: name,
                        style: GoogleFonts.raleway(color: Colors.deepPurple),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.deepPurple.shade50,
                            focusColor: Colors.deepPurple.shade50,
                            hoverColor: Colors.deepPurple.shade50,
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.deepPurple.shade300)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.deepPurple.shade300)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.deepPurple.shade300)),
                            labelText: "Phone No",
                            labelStyle: GoogleFonts.raleway(
                                fontSize: 12,
                                color: Colors.deepPurple.shade300)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 24.0),
                      child: TextField(
                        controller: name,
                        style: GoogleFonts.raleway(color: Colors.deepPurple),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.deepPurple.shade50,
                            focusColor: Colors.deepPurple.shade50,
                            hoverColor: Colors.deepPurple.shade50,
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.deepPurple.shade300)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.deepPurple.shade300)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.deepPurple.shade300)),
                            labelText: "Address",
                            labelStyle: GoogleFonts.raleway(
                                fontSize: 12,
                                color: Colors.deepPurple.shade300)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 24.0),
                      child: TextField(
                        controller: name,
                        style: GoogleFonts.raleway(color: Colors.deepPurple),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.deepPurple.shade50,
                            focusColor: Colors.deepPurple.shade50,
                            hoverColor: Colors.deepPurple.shade50,
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.deepPurple.shade300)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.deepPurple.shade300)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.deepPurple.shade300)),
                            labelText: "Password",
                            labelStyle: GoogleFonts.raleway(
                                fontSize: 12,
                                color: Colors.deepPurple.shade300)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: TextField(
                        controller: name,
                        style: GoogleFonts.raleway(color: Colors.deepPurple),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.deepPurple.shade50,
                            focusColor: Colors.deepPurple.shade50,
                            hoverColor: Colors.deepPurple.shade50,
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.deepPurple.shade300)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.deepPurple.shade300)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.deepPurple.shade300)),
                            labelText: "Confirm Password",
                            labelStyle: GoogleFonts.raleway(
                                fontSize: 12,
                                color: Colors.deepPurple.shade300)),
                      ),
                    ),
                  ],
                ),
                Positioned(
                    bottom: 5,
                    left: 0,
                    right: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width - 32,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.deepPurple),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Text(
                          "Sign Up",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.raleway(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
