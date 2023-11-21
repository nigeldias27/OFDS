import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/bottom_app_navigation.dart';

class RestaurantHome extends StatefulWidget {
  const RestaurantHome({super.key});

  @override
  State<RestaurantHome> createState() => _RestaurantHomeState();
}

class _RestaurantHomeState extends State<RestaurantHome> {
  TextEditingController Search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppNav(
        index: 0,
        boolcheck: 1,
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerboxScrolled) => [
          SliverAppBar(
            backgroundColor: Colors.white,
            actions: [
              IconButton(
                  onPressed: () {
                    /*
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Profile()));*/
                  },
                  icon: Icon(
                    Icons.pin_drop,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (builder)=>Notifications()));
                  },
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ))
            ],
            expandedHeight: MediaQuery.of(context).size.height * 0.25,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(children: [
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.28,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.deepPurple,
                                Colors.deepPurple.shade300
                              ]),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(36),
                              bottomRight: Radius.circular(36))),
                    ),
                  ],
                ),
                Positioned(
                    left: 0,
                    right: 0,
                    top: MediaQuery.of(context).size.height * 0.1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        'Welcome Nigel!',
                        style: GoogleFonts.raleway(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                Positioned(
                    bottom: 15,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Container(
                        height: 54,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 32.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: TextField(
                                  controller: Search,
                                  decoration: InputDecoration(
                                    labelText: 'Search for any order',
                                    labelStyle: GoogleFonts.raleway(),
                                    border: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xff564787))),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xff564787))),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xff564787))),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        /*
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ExploreSearch(search:Search.text)));*/
                                      },
                                      child: const Icon(
                                        Icons.search,
                                        color: Colors.grey,
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ))
              ]),
            ),
          ),
        ],
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pending Acceptance",
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width - 16,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey.shade300)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "2 items | ₹200",
                          style: GoogleFonts.raleway(),
                        ),
                        Row(
                          children: [Icon(Icons.check), Icon(Icons.close)],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Text(
                "Pending",
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width - 16,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey.shade300)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "2 items | ₹200",
                          style: GoogleFonts.raleway(),
                        ),
                        Row(
                          children: [Icon(Icons.navigate_next)],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Text(
                "Completed",
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width - 16,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade50,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey.shade300)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "2 items | ₹200",
                          style: GoogleFonts.raleway(color: Colors.grey),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.navigate_next,
                              color: Colors.grey,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
