import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomegranet/application/core/consts/icon_assets.dart';
import 'package:pomegranet/application/features/restaurant/presentation/pages/home_page.dart';
import 'package:pomegranet/application/features/restaurant/presentation/pages/widgets/circular_progress_bar.dart';
import 'package:pomegranet/application/features/restaurant/presentation/pages/widgets/ingrediants_tab.dart';
import 'package:pomegranet/application/features/restaurant/presentation/pages/widgets/recipe_tab.dart';
import 'package:pomegranet/application/features/restaurant/presentation/pages/widgets/review_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pomegranet',
      home: HomePage(),
    );
  }
}
