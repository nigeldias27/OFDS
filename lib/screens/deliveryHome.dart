import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/bottom_app_navigation.dart';

class DeliveryHome extends StatefulWidget {
  const DeliveryHome({super.key});

  @override
  State<DeliveryHome> createState() => _DeliveryHomeState();
}

class _DeliveryHomeState extends State<DeliveryHome> {
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
                "Assigned Order",
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "Restaurant Name and Phone no: \n Truffles, +91 9900423698",
                  style: GoogleFonts.raleway(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "Customer Name and Phone no: \n Mike, +91 984502434",
                  style: GoogleFonts.raleway(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Image.asset('assets/map.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
