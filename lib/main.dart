import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Pomegranet',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int selectedIndex = 0;
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF4F6F8),
        leading: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Image.asset(
              'assets/icons/menu.png',
              color: const Color(0xFF637381),
            ),
          ),
        ),
        leadingWidth: 40,
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              width: 40,
              height: 40,
              padding: const EdgeInsets.only(right: 16),
              child: Image.asset(
                'assets/icons/cart.png',
                color: const Color(0xFF637381),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Home',
                textAlign: TextAlign.right,
                style: GoogleFonts.rubik(
                  textStyle: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.15,
                    color: Color(0xFF212B36),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 8, bottom: 20),
                child: Divider(
                  color: const Color(0xFF919EAB).withOpacity(0.24),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: GoogleFonts.rubik(
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.25,
                        color: Color(0xFF212B36),
                      ),
                    ),
                  ),
                  Text(
                    'View all',
                    style: GoogleFonts.rubik(
                      textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF22B4B4),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 128,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 128,
                      width: 100,
                      margin: const EdgeInsets.only(right: 16),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Positioned(
                            top: 30,
                            child: Container(
                              width: 100,
                              height: 75,
                              decoration: const BoxDecoration(
                                  color: Color(
                                    0xFFFFFFFF,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xFF919EAB)
                                        .withOpacity(0.12),
                                    spreadRadius: 0,
                                    blurRadius: 16,
                                    offset: const Offset(0, 8),
                                  ),
                                ]),
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    'Burger',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.rubik(
                                      textStyle: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.25,
                                        color: Color(0xFF212B36),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Image.asset(
                            'assets/images/categories/burger.png',
                            width: 75,
                            height: 61,
                            alignment: Alignment.topCenter,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Trending Now',
                    style: GoogleFonts.rubik(
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.25,
                        color: Color(0xFF212B36),
                      ),
                    ),
                  ),
                  Text(
                    'View all',
                    style: GoogleFonts.rubik(
                      textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF22B4B4),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 320,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 320,
                      margin: const EdgeInsets.only(right: 16),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Image.asset(
                            'assets/images/trends/burger.png',
                            height: 245,
                          ),
                          Positioned(
                            top: 180,
                            child: Container(
                              width: 180,
                              padding: const EdgeInsets.symmetric(
                                vertical: 16,
                                horizontal: 12,
                              ),
                              decoration: const BoxDecoration(
                                color: Color(
                                  0xFFFFFFFF,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Hamburger',
                                        style: GoogleFonts.rubik(
                                          textStyle: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF212B36),
                                          ),
                                        ),
                                      ),
                                      Wrap(
                                        crossAxisAlignment:
                                            WrapCrossAlignment.center,
                                        spacing: 6,
                                        children: [
                                          Image.asset(
                                            'assets/icons/star.png',
                                            color: const Color(0xFF22B4B4),
                                            height: 12,
                                          ),
                                          Text(
                                            '4.5',
                                            style: GoogleFonts.rubik(
                                              textStyle: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300,
                                                color: Color(0xFF919EAB),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Wrap(
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    spacing: 6,
                                    children: [
                                      Image.asset(
                                        'assets/icons/time.png',
                                        color: const Color(0xFF22B4B4),
                                        height: 12,
                                      ),
                                      Text(
                                        '25 Mins',
                                        style: GoogleFonts.rubik(
                                          textStyle: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xFF919EAB),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Wrap(
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    spacing: 6,
                                    children: [
                                      Image.asset(
                                        'assets/icons/calorie.png',
                                        color: const Color(0xFF22B4B4),
                                        height: 12,
                                      ),
                                      Text(
                                        '320 Kcal',
                                        style: GoogleFonts.rubik(
                                          textStyle: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xFF919EAB),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Wrap(
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    spacing: 6,
                                    children: [
                                      Image.asset(
                                        'assets/icons/shop.png',
                                        color: const Color(0xFF22B4B4),
                                        height: 12,
                                      ),
                                      Text(
                                        'Sunday gather',
                                        style: GoogleFonts.rubik(
                                          textStyle: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xFF919EAB),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 10,
                            child: Container(
                              height: 42,
                              width: 42,
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xFF919EAB)
                                          .withOpacity(0.12),
                                      spreadRadius: 0,
                                      blurRadius: 13,
                                      offset: const Offset(0, 0),
                                    ),
                                  ]),
                              child: Image.asset(
                                'assets/icons/add.png',
                                color: const Color(0xFF212B36),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Meal',
                    style: GoogleFonts.rubik(
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.25,
                        color: Color(0xFF212B36),
                      ),
                    ),
                  ),
                  Text(
                    'View all',
                    style: GoogleFonts.rubik(
                      textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF22B4B4),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 128,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 128,
                      width: 100,
                      margin: const EdgeInsets.only(right: 16),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Positioned(
                            top: 30,
                            child: Container(
                              width: 100,
                              height: 75,
                              decoration: const BoxDecoration(
                                  color: Color(
                                    0xFFFFFFFF,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xFF919EAB)
                                          .withOpacity(0.12),
                                      spreadRadius: 0,
                                      blurRadius: 16,
                                      offset: const Offset(0, 8),
                                    ),
                                  ],
                                ),
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    'Burger',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.rubik(
                                      textStyle: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.25,
                                        color: Color(0xFF212B36),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Image.asset(
                            'assets/images/categories/burger.png',
                            width: 75,
                            height: 61,
                            alignment: Alignment.topCenter,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nearby Restaurants',
                    style: GoogleFonts.rubik(
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.25,
                        color: Color(0xFF212B36),
                      ),
                    ),
                  ),
                  Text(
                    'View all',
                    style: GoogleFonts.rubik(
                      textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF22B4B4),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 220,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: 247,
                      margin: const EdgeInsets.only(right: 16),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Image.asset(
                              'assets/images/restaurants/sunday_gather.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 100,
                            child: Container(
                              width: 247,
                              padding: const EdgeInsets.symmetric(
                                vertical: 16,
                                horizontal: 12,
                              ),
                              decoration: const BoxDecoration(
                                color: Color(
                                  0xFFFFFFFF,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Sunday gather',
                                        style: GoogleFonts.rubik(
                                          textStyle: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF212B36),
                                          ),
                                        ),
                                      ),
                                      Wrap(
                                        crossAxisAlignment:
                                            WrapCrossAlignment.center,
                                        spacing: 6,
                                        children: [
                                          Image.asset(
                                            'assets/icons/star.png',
                                            color: const Color(0xFF22B4B4),
                                            height: 12,
                                          ),
                                          Text(
                                            '4.5',
                                            style: GoogleFonts.rubik(
                                              textStyle: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300,
                                                color: Color(0xFF212B36),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Wrap(
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    spacing: 6,
                                    children: [
                                      Image.asset(
                                        'assets/icons/location.png',
                                        color: const Color(0xFF22B4B4),
                                        height: 12,
                                      ),
                                      Text(
                                        '0.5 Km',
                                        style: GoogleFonts.rubik(
                                          textStyle: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xFF919EAB),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Wrap(
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    spacing: 6,
                                    children: [
                                      Image.asset(
                                        'assets/icons/shop.png',
                                        color: const Color(0xFF22B4B4),
                                        height: 12,
                                      ),
                                      Text(
                                        '76A Eighth Ave',
                                        style: GoogleFonts.rubik(
                                          textStyle: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xFF919EAB),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 10,
                            child: Container(
                              height: 42,
                              width: 42,
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xFF919EAB)
                                          .withOpacity(0.12),
                                      spreadRadius: 0,
                                      blurRadius: 13,
                                      offset: const Offset(0, 0),
                                    ),
                                  ]),
                              child: Image.asset(
                                'assets/icons/heart.png',
                                color: const Color(0xFF212B36),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'World Cuisine',
                    style: GoogleFonts.rubik(
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.25,
                        color: Color(0xFF212B36),
                      ),
                    ),
                  ),
                  Text(
                    'View all',
                    style: GoogleFonts.rubik(
                      textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF22B4B4),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 128,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 128,
                      width: 100,
                      margin: const EdgeInsets.only(right: 16),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Positioned(
                            top: 30,
                            child: Container(
                              width: 100,
                              height: 75,
                              decoration: const BoxDecoration(
                                  color: Color(
                                    0xFFFFFFFF,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xFF919EAB)
                                        .withOpacity(0.12),
                                    spreadRadius: 0,
                                    blurRadius: 16,
                                    offset: const Offset(0, 8),
                                  ),
                                ]),
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    'Burger',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.rubik(
                                      textStyle: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.25,
                                        color: Color(0xFF212B36),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Image.asset(
                            'assets/images/categories/burger.png',
                            width: 75,
                            height: 61,
                            alignment: Alignment.topCenter,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: DefaultTabController(
        length: 4,
        child: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          controller: tabController,
          labelStyle: GoogleFonts.rubik(
            textStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
              letterSpacing: 0.25,
              color: Color(0xFF22B4B4),
            ),
          ),
          indicator: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Color(0xFF22B4B4),
              ),
            ),
          ),
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          tabs: [
            Tab(
              icon: Image.asset(
                'assets/icons/home.png',
                height: 24,
                color: selectedIndex == 0
                    ? const Color(0xFF22B4B4)
                    : const Color(0xFF919EAB).withOpacity(0.8),
              ),
              text: 'Home',
            ),
            Tab(
              icon: Image.asset(
                'assets/icons/search.png',
                height: 24,
                color: selectedIndex == 1
                    ? const Color(0xFF22B4B4)
                    : const Color(0xFF919EAB).withOpacity(0.8),
              ),
              text: 'Explore',
            ),
            Tab(
              icon: Image.asset(
                'assets/icons/calendar.png',
                height: 24,
                color: selectedIndex == 2
                    ? const Color(0xFF22B4B4)
                    : const Color(0xFF919EAB).withOpacity(0.8),
              ),
              text: 'Meal Planner',
            ),
            Tab(
              icon: Image.asset(
                'assets/icons/recipe.png',
                height: 24,
                color: selectedIndex == 3
                    ? const Color(0xFF22B4B4)
                    : const Color(0xFF919EAB).withOpacity(0.8),
              ),
              text: 'Recipe',
            )
          ],
        ),
      ),
    );
  }
}



// BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         currentIndex: selectedIndex,
//         onTap: (value) {
//           setState(() {
//             selectedIndex = value;
//           });
//         },
//         selectedLabelStyle: GoogleFonts.rubik(
//           textStyle: const TextStyle(
//             fontSize: 12,
//             fontWeight: FontWeight.w300,
//             letterSpacing: 0.25,
//             color: Color(0xFF22B4B4),
//           ),
//         ),
//         selectedItemColor: const Color(0xFF22B4B4),
//         items: [
//           BottomNavigationBarItem(
//             icon: Image.asset(
//               'assets/icons/home.png',
//               height: 24,
//               color: selectedIndex == 0
//                   ? const Color(0xFF22B4B4)
//                   : const Color(0xFF919EAB).withOpacity(0.8),
//             ),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset(
//               'assets/icons/search.png',
//               height: 24,
//               color: selectedIndex == 1
//                   ? const Color(0xFF22B4B4)
//                   : const Color(0xFF919EAB).withOpacity(0.8),
//             ),
//             label: 'Explore',
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset(
//               'assets/icons/calendar.png',
//               height: 24,
//               color: selectedIndex == 2
//                   ? const Color(0xFF22B4B4)
//                   : const Color(0xFF919EAB).withOpacity(0.8),
//             ),
//             label: 'Meal Planner',
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset(
//               'assets/icons/recipe.png',
//               height: 24,
//               color: selectedIndex == 3
//                   ? const Color(0xFF22B4B4)
//                   : const Color(0xFF919EAB).withOpacity(0.8),
//             ),
//             label: 'Recipe',
//           ),
//         ],
//       ),