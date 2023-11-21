import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ofds/screens/cart.dart';

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({super.key});

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_back_ios_new)),
                        Icon(Icons.more_vert)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      "Namaste",
                      style: GoogleFonts.raleway(
                          fontWeight: FontWeight.bold, fontSize: 32),
                    ),
                  ),
                  Text(
                    "South Indian",
                    style: GoogleFonts.raleway(color: Colors.grey.shade700),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green.shade800,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 2, horizontal: 8.0),
                          child: Text(
                            "4.1",
                            style: GoogleFonts.raleway(color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "52.3K ratings",
                          style: GoogleFonts.raleway(),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 24, 8, 0),
                    child: Row(
                      children: [
                        Text(
                          "Menu",
                          style: GoogleFonts.raleway(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 32.0, horizontal: 4),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Masala Dosa with Idli[2 Pieces]",
                                    style: GoogleFonts.raleway(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                        color: Colors.yellow.shade800,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                        color: Colors.yellow.shade800,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                        color: Colors.yellow.shade800,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                        color: Colors.yellow.shade800,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        size: 16,
                                        color: Colors.yellow.shade800,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "₹109",
                                    style: GoogleFonts.raleway(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Served with sambar and chutney. No soda used in the preparation",
                                    style: GoogleFonts.raleway(
                                        color: Colors.grey.shade700,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Stack(children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 14.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(
                                      "https://pipingpotcurry.com/wp-content/uploads/2020/11/Dosa-recipe-plain-sada-dosa-Piping-Pot-Curry.jpg"),
                                ),
                              ),
                              Positioned(
                                bottom: -8,
                                left: 0,
                                right: 0,
                                child: TextButton(
                                    onPressed: () {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.red.shade50,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              color: Colors.red.shade400)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 4, horizontal: 24.0),
                                        child: Text(
                                          "ADD",
                                          style: GoogleFonts.raleway(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.red),
                                        ),
                                      ),
                                    )),
                              )
                            ]))
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.grey.shade300),
                    height: 1,
                    width: MediaQuery.of(context).size.width - 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 32.0, horizontal: 4),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Masala Dosa with Idli[2 Pieces]",
                                    style: GoogleFonts.raleway(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                        color: Colors.yellow.shade800,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                        color: Colors.yellow.shade800,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                        color: Colors.yellow.shade800,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                        color: Colors.yellow.shade800,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        size: 16,
                                        color: Colors.yellow.shade800,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "₹109",
                                    style: GoogleFonts.raleway(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Served with sambar and chutney. No soda used in the preparation",
                                    style: GoogleFonts.raleway(
                                        color: Colors.grey.shade700,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Stack(children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 14.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(
                                      "https://pipingpotcurry.com/wp-content/uploads/2020/11/Dosa-recipe-plain-sada-dosa-Piping-Pot-Curry.jpg"),
                                ),
                              ),
                              Positioned(
                                bottom: -8,
                                left: 0,
                                right: 0,
                                child: TextButton(
                                    onPressed: () {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.red.shade200,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              color: Colors.red.shade400)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 4, horizontal: 24.0),
                                        child: Text(
                                          "ADD",
                                          style: GoogleFonts.raleway(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.red),
                                        ),
                                      ),
                                    )),
                              )
                            ]))
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.grey.shade300),
                    height: 1,
                    width: MediaQuery.of(context).size.width - 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 32.0, horizontal: 4),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Masala Dosa with Idli[2 Pieces]",
                                    style: GoogleFonts.raleway(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                        color: Colors.yellow.shade800,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                        color: Colors.yellow.shade800,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                        color: Colors.yellow.shade800,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                        color: Colors.yellow.shade800,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        size: 16,
                                        color: Colors.yellow.shade800,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "₹109",
                                    style: GoogleFonts.raleway(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Served with sambar and chutney. No soda used in the preparation",
                                    style: GoogleFonts.raleway(
                                        color: Colors.grey.shade700,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Stack(children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 14.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(
                                      "https://pipingpotcurry.com/wp-content/uploads/2020/11/Dosa-recipe-plain-sada-dosa-Piping-Pot-Curry.jpg"),
                                ),
                              ),
                              Positioned(
                                bottom: -8,
                                left: 0,
                                right: 0,
                                child: TextButton(
                                    onPressed: () {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.red.shade200,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              color: Colors.red.shade400)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 4, horizontal: 24.0),
                                        child: Text(
                                          "ADD",
                                          style: GoogleFonts.raleway(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.red),
                                        ),
                                      ),
                                    )),
                              )
                            ]))
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.grey.shade300),
                    height: 1,
                    width: MediaQuery.of(context).size.width - 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 32.0, horizontal: 4),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Masala Dosa with Idli[2 Pieces]",
                                    style: GoogleFonts.raleway(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                        color: Colors.yellow.shade800,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                        color: Colors.yellow.shade800,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                        color: Colors.yellow.shade800,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                        color: Colors.yellow.shade800,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        size: 16,
                                        color: Colors.yellow.shade800,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "₹109",
                                    style: GoogleFonts.raleway(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Served with sambar and chutney. No soda used in the preparation",
                                    style: GoogleFonts.raleway(
                                        color: Colors.grey.shade700,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Stack(children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 14.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(
                                      "https://pipingpotcurry.com/wp-content/uploads/2020/11/Dosa-recipe-plain-sada-dosa-Piping-Pot-Curry.jpg"),
                                ),
                              ),
                              Positioned(
                                bottom: -8,
                                left: 0,
                                right: 0,
                                child: TextButton(
                                    onPressed: () {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.red.shade200,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              color: Colors.red.shade400)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 4, horizontal: 24.0),
                                        child: Text(
                                          "ADD",
                                          style: GoogleFonts.raleway(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.red),
                                        ),
                                      ),
                                    )),
                              )
                            ]))
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.grey.shade300),
                    height: 1,
                    width: MediaQuery.of(context).size.width - 32,
                  ),
                ],
              ),
            ),
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
                                  "View Cart",
                                  style:
                                      GoogleFonts.raleway(color: Colors.white),
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
    );
  }
}
