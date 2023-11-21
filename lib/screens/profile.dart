import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ofds/widgets/bottom_app_navigation.dart';

class Profile extends StatefulWidget {
  const Profile({super.key, required this.viewState});
  final int viewState;
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppNav(
        index: 1,
        boolcheck: widget.viewState,
      ),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(150)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(150),
                            child: Image.network(
                                "https://avatars.githubusercontent.com/u/41966681?v=4")),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Text(
                        "Nigel Dias",
                        style: GoogleFonts.raleway(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.call),
                          Text(
                            "+91-9448853687",
                            style: GoogleFonts.raleway(),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_city,
                            color: Colors.grey,
                          ),
                          Text(
                            "311 Wing 3 1st Floor Sobha Morzaria Grandeur",
                            style: GoogleFonts.raleway(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 24.0, 12, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.viewState == 0 ? "Orders" : "Menu",
                        style: GoogleFonts.raleway(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      widget.viewState == 1
                          ? Container(
                              decoration: BoxDecoration(
                                  color: Colors.purple.shade50,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: Colors.purple.shade300)),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  "ADD ITEM",
                                  style: GoogleFonts.raleway(
                                      fontSize: 12,
                                      color: Colors.purple.shade300),
                                ),
                              ),
                            )
                          : Container()
                    ],
                  ),
                ),
                widget.viewState == 1
                    ? Column(
                        children: [
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 14.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          child: Image.network(
                                              "https://pipingpotcurry.com/wp-content/uploads/2020/11/Dosa-recipe-plain-sada-dosa-Piping-Pot-Curry.jpg"),
                                        ),
                                      ),
                                    ]))
                              ],
                            ),
                          ),
                          Container(
                            decoration:
                                BoxDecoration(color: Colors.grey.shade300),
                            height: 1,
                            width: MediaQuery.of(context).size.width - 32,
                          ),
                        ],
                      )
                    : Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width - 16,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              border: Border.all(color: Colors.grey.shade300)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Namaste",
                                      style: GoogleFonts.raleway(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "12 October 2023 12:12 | Arriving in 12 mins",
                                      style: GoogleFonts.raleway(
                                          color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                              Icon(Icons.navigate_next)
                            ],
                          ),
                        ),
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
