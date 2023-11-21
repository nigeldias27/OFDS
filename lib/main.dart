import 'dart:async';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ofds/screens/login.dart';
import 'package:ofds/screens/restaurant.dart';
import 'package:ofds/screens/restaurantHome.dart';
import 'package:ofds/widgets/bottom_app_navigation.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      // This is the theme of your application.
      //
      // TRY THIS: Try running your application with "flutter run". You'll see
      // the application has a blue toolbar. Then, without quitting the app,
      // try changing the seedColor in the colorScheme below to Colors.green
      // and then invoke "hot reload" (save your changes or press the "hot
      // reload" button in a Flutter-supported IDE, or press "r" if you used
      // the command line to start the app).
      //
      // Notice that the counter didn't reset back to zero; the application
      // state is not lost during the reload. To reset the state, use hot
      // restart instead.
      //
      // This works for code too, not just values: Most code changes can be
      // tested with just a hot reload.
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    home: const SplashScreen(),
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final int title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  TextEditingController Search = TextEditingController();
  List categories = ["Hamper & Sweets", "Biryani", "Burger"];
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      bottomNavigationBar: BottomAppNav(
        index: 0,
        boolcheck: widget.title,
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
                                    labelText: 'Search for any restaurant',
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
                "Categories",
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, int index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 18, horizontal: 8),
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.grey.shade50,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade300,
                                          blurRadius: 5)
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16, horizontal: 6),
                                  child: Column(
                                    children: [
                                      Image.network(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSUth9e_mcojd2uB-6kbCBtzYVuWvDUX8V4w&usqp=CAU",
                                        height: 75,
                                      ),
                                      Text(
                                        "Burger",
                                        style: GoogleFonts.raleway(
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 8),
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade300,
                                          blurRadius: 5)
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16, horizontal: 6),
                                  child: Column(
                                    children: [
                                      Image.network(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSUth9e_mcojd2uB-6kbCBtzYVuWvDUX8V4w&usqp=CAU",
                                        height: 75,
                                      ),
                                      Text(
                                        "Burger",
                                        style: GoogleFonts.raleway(
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                )),
                          ),
                        ],
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 12, 0, 8.0),
                child: Text(
                  "Recommended Restaurants",
                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => RestaurantPage()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.shade200)),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5)),
                          child: Image.network(
                            "https://plus.unsplash.com/premium_photo-1670984940113-f3aa1cd1309a?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cmVzdGF1cmFudHN8ZW58MHx8MHx8fDA%3D",
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Namaste",
                                  style: GoogleFonts.raleway(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "South Indian . 1 Km",
                                  style: GoogleFonts.raleway(
                                      color: Colors.grey, fontSize: 12),
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (_, __, ___) => Login(),
              transitionDuration: Duration(seconds: 1),
              transitionsBuilder: (_, a, __, c) =>
                  FadeTransition(opacity: a, child: c),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
          decoration: BoxDecoration(color: Colors.deepPurple.shade100),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.deepPurple.shade800,
                    borderRadius: BorderRadius.circular(100)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 48.0, horizontal: 32),
                  child: Text(
                    "OFDS",
                    style: GoogleFonts.dancingScript(
                        color: Colors.white, fontSize: 64),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(
                  "OFDS",
                  style: GoogleFonts.montserrat(
                      color: Colors.deepPurple.shade800, fontSize: 30),
                ),
              )
            ],
          )),
    ));
  }
}
