import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // App의 배경색 지정
      theme: ThemeData(
        // Color : Space Gray
        appBarTheme: AppBarTheme(
          backgroundColor: const Color(0xFF4B4B4B),
        ),
        scaffoldBackgroundColor: const Color(0xFF4B4B4B),
        bottomAppBarTheme: const BottomAppBarTheme(
          color: Color(0xFF4B4B4B),
        )

      ),
      home: Scaffold(
        appBar: AppBar(

        ),
        body: ListView(

        ),
        bottomNavigationBar: BottomAppBar(

        ),
      ),
    );
  }
}