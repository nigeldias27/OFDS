import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 72, 8, 8),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            border: Border.all(color: Colors.grey.shade300)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Masala Dosa with Idli [2 Pieces]",
                                    style: GoogleFonts.raleway(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.red.shade50,
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: Colors.red.shade400)),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.remove,
                                            color: Colors.red.shade400,
                                            size: 12,
                                          ),
                                        ),
                                        Text(
                                          "1",
                                          style: GoogleFonts.raleway(),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.red.shade400,
                                            size: 12,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 24, 8, 8),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            border: Border.all(color: Colors.grey.shade300)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.timelapse),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Delivery in",
                                              style: GoogleFonts.raleway(),
                                            ),
                                            Text(
                                              "30-35 mins",
                                              style: GoogleFonts.raleway(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Icon(Icons.navigate_next)
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.home),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "Delivery at",
                                                  style: GoogleFonts.raleway(),
                                                ),
                                                Text(
                                                  " Home",
                                                  style: GoogleFonts.raleway(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                            Text(
                                              "311, Wing 3,1st Floor, Sobha Morzaria ...",
                                              style: GoogleFonts.raleway(
                                                  color: Colors.grey),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Icon(Icons.navigate_next)
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.call),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Nigel Dias,",
                                              style: GoogleFonts.raleway(),
                                            ),
                                            Text(
                                              "+91-9448853687",
                                              style: GoogleFonts.raleway(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Icon(Icons.navigate_next)
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.receipt),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Total Bill",
                                              style: GoogleFonts.raleway(),
                                            ),
                                            Text(
                                              "276.78",
                                              style: GoogleFonts.raleway(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Icon(Icons.navigate_next)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                  top: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 5,
                          offset: Offset(5, 5))
                    ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 8),
                      child: Row(
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back_ios_new)),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Namaste",
                              style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
              Positioned(
                  bottom: 0,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (builder) => Cart()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width - 16,
                        decoration: BoxDecoration(
                            color: Colors.red.shade500,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "1 Item | ₹219",
                                style: GoogleFonts.raleway(color: Colors.white),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Buy Now",
                                    style: GoogleFonts.raleway(
                                        color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.chevron_right,
                                    color: Colors.white,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
