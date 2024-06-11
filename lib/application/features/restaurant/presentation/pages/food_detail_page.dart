import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomegranet/application/core/consts/icon_assets.dart';
import 'package:pomegranet/application/features/restaurant/presentation/pages/widgets/circular_progress_bar.dart';
import 'package:pomegranet/application/features/restaurant/presentation/pages/widgets/ingrediants_tab.dart';
import 'package:pomegranet/application/features/restaurant/presentation/pages/widgets/recipe_tab.dart';
import 'package:pomegranet/application/features/restaurant/presentation/pages/widgets/review_tab.dart';

class FoodDetailPage extends StatefulWidget {
  const FoodDetailPage({super.key});

  @override
  State<FoodDetailPage> createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            'assets/images/trends/burger.png',
                            height: MediaQuery.of(context).size.height / 2.2,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          ),
                          Container(
                            color: Colors.black.withOpacity(0.24),
                            height: MediaQuery.of(context).size.height / 2.2,
                          ),
                          Positioned(
                            top: MediaQuery.of(context).viewPadding.top,
                            right: MediaQuery.of(context).viewPadding.right,
                            left: MediaQuery.of(context).viewPadding.left,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Image.asset(
                                      IconsAssets.arrowLeft,
                                      color: Colors.white,
                                      height: 25,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                      IconsAssets.archive,
                                      color: Colors.white,
                                      height: 25,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  'Hamburger',
                                  style: GoogleFonts.rubik(
                                    textStyle: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.15,
                                      color: Color(0xFF212B36),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'American / Dinner / Burger',
                                  style: GoogleFonts.rubik(
                                    textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.15,
                                      color: Color(0xFF637381),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 48),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              IconsAssets.time,
                              color: const Color(0xFF22B4B4),
                              height: 24,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              '25 Mins',
                              style: GoogleFonts.rubik(
                                textStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  letterSpacing: 0.15,
                                  color: Color(0xFF637381),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 36,
                          child: VerticalDivider(
                            color: const Color(0xFF919EAB).withOpacity(0.32),
                            width: 1,
                            thickness: 1,
                          ),
                        ),
                        Column(
                          children: [
                            Image.asset(
                              IconsAssets.shop,
                              color: const Color(0xFF22B4B4),
                              height: 24,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Sunday gather',
                              style: GoogleFonts.rubik(
                                textStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  letterSpacing: 0.15,
                                  color: Color(0xFF637381),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 36,
                          child: VerticalDivider(
                            color: const Color(0xFF919EAB).withOpacity(0.32),
                            width: 1,
                            thickness: 1,
                          ),
                        ),
                        Column(
                          children: [
                            Image.asset(
                              IconsAssets.star,
                              color: const Color(0xFF22B4B4),
                              height: 24,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              '4.5',
                              style: GoogleFonts.rubik(
                                textStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  letterSpacing: 0.15,
                                  color: Color(0xFF637381),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircularProgressBar(
                            title: '350 k', subtitle: 'Energy', value: 0.8),
                        CircularProgressBar(
                            title: '25 g', subtitle: 'Protein', value: 0.64),
                        CircularProgressBar(
                            title: '50 g', subtitle: 'Crabs', value: 0.55),
                        CircularProgressBar(
                            title: '8 g', subtitle: 'Fat', value: 0.8),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: DefaultTabController(
                      length: 3,
                      child: Column(
                        children: [
                          TabBar(
                            labelStyle: GoogleFonts.rubik(
                              textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF22B4B4),
                              ),
                            ),
                            indicatorColor: const Color(0xFF22B4B4),
                            indicatorSize: TabBarIndicatorSize.tab,
                            tabs: const [
                              Tab(text: 'Ingredients'),
                              Tab(text: 'Recipe'),
                              Tab(text: 'Reviews'),
                            ],
                          ),
                          const SizedBox(
                            height: 2000,
                            child: TabBarView(
                              children: [
                                IngredientsTab(),
                                RecipeTab(),
                                ReviewsTab(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                    color: const Color(0xFF919EAB).withOpacity(0.24)),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: const Color(0xFF22B4B4).withOpacity(0.48),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        'Order \$12.00',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.publicSans(
                          textStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF22B4B4),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: const WidgetStatePropertyAll(
                          Color(0xFF22B4B4),
                        ),
                        shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        shadowColor:
                            const WidgetStatePropertyAll<Color>(Colors.red)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        'Add to journal',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.publicSans(
                          textStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
