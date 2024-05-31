import 'package:flutter/material.dart';
import 'package:pomegranet/application/features/restaurant/presentation/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Pomegranet',
      home: HomePage(),
    );
  }
}
