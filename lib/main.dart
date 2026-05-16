import 'package:flutter/material.dart';
import 'view/home_page.dart';

void main() {
  runApp(const RetroShopApp());
}

class RetroShopApp extends StatelessWidget {
  const RetroShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Retro Shop',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.cyan,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: HomePage(),
    );
  }
}
