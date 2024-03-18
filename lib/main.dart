import 'package:flutter/material.dart';
import 'package:hw/detalis.dart';
import 'package:hw/home%20page/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      routes: {
        '/': (Dk) => const HomePage(),
        'details': (Dk) => Detalis(),
      },
    );
  }
}
