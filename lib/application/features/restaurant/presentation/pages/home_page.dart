import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomegranet/application/core/consts/icon_assets.dart';
import 'package:pomegranet/application/features/restaurant/domain/entities/category.dart';
import 'package:pomegranet/application/features/restaurant/domain/entities/food.dart';
import 'package:pomegranet/application/features/restaurant/domain/entities/meal.dart';
import 'package:pomegranet/application/features/restaurant/domain/entities/restaurant.dart';
import 'package:pomegranet/application/features/restaurant/domain/entities/world_cuisine.dart';
import 'package:pomegranet/application/features/restaurant/presentation/pages/widgets/food_card.dart';
import 'package:pomegranet/application/features/restaurant/presentation/pages/widgets/heading.dart';
import 'package:pomegranet/application/features/restaurant/presentation/pages/widgets/item_card.dart';
import 'package:pomegranet/application/features/restaurant/presentation/pages/widgets/restaurant_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
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
              IconsAssets.menu,
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
                IconsAssets.cart,
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
              Heading(title: 'Categories', callback: () {}),
              SizedBox(
                height: 128,
                child: ListView.builder(
                  itemCount: Category.mockData.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return FoodCard(
                        title: Category.mockData[index].title,
                        image: Category.mockData[index].image);
                  },
                ),
              ),
              Heading(title: 'Trending Now', callback: () {}),
              SizedBox(
                height: 320,
                child: ListView.builder(
                  itemCount: Food.mockData.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return ItemCard(food: Food.mockData[index]);
                  },
                ),
              ),
              Heading(title: 'Meal', callback: () {}),
              SizedBox(
                height: 128,
                child: ListView.builder(
                  itemCount: Meal.mockData.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return FoodCard(
                      title: Meal.mockData[index].title,
                      image: Meal.mockData[index].image,
                    );
                  },
                ),
              ),
              Heading(title: 'Nearby Restaurants', callback: () {}),
              SizedBox(
                height: 220,
                child: ListView.builder(
                  itemCount: Restaurant.mockData.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return RestaurantCard(
                      restaurant: Restaurant.mockData[index],
                    );
                  },
                ),
              ),
              Heading(title: 'World Cuisine', callback: () {}),
              SizedBox(
                height: 128,
                child: ListView.builder(
                  itemCount: WorldCuisine.mockData.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return FoodCard(
                      title: WorldCuisine.mockData[index].name,
                      image: WorldCuisine.mockData[index].image,
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
          labelPadding: EdgeInsets.zero,
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
                IconsAssets.home,
                height: 24,
                color: selectedIndex == 0
                    ? const Color(0xFF22B4B4)
                    : const Color(0xFF919EAB).withOpacity(0.8),
              ),
              text: 'Home',
            ),
            Tab(
              icon: Image.asset(
                IconsAssets.search,
                height: 24,
                color: selectedIndex == 1
                    ? const Color(0xFF22B4B4)
                    : const Color(0xFF919EAB).withOpacity(0.8),
              ),
              text: 'Explore',
            ),
            Tab(
              icon: Image.asset(
                IconsAssets.calendar,
                height: 24,
                color: selectedIndex == 2
                    ? const Color(0xFF22B4B4)
                    : const Color(0xFF919EAB).withOpacity(0.8),
              ),
              text: 'Meal Planner',
            ),
            Tab(
              icon: Image.asset(
                IconsAssets.recipe,
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
