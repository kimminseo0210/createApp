import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // 앱의 기본 색상 정의
        primaryColor: Colors.deepPurpleAccent, // 주 색상 (AppBar, 버튼 등)
        primarySwatch: Colors.deepPurple, // 주 색상 팔레트
        scaffoldBackgroundColor: Color.fromRGBO(161, 64, 64, 1.0), // Scaffold의 기본 배경색

        // AppBar 테마
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white, // AppBar 배경색
          toolbarHeight: 30, // AppBar 높이
          titleTextStyle: TextStyle(color: Colors.black), // AppBar 텍스트 색상
          iconTheme: IconThemeData(color: Colors.black), // AppBar 아이콘 색상
        ),

        // BottomAppBar 테마
        bottomAppBarTheme: const BottomAppBarTheme(
          color: Colors.deepPurpleAccent, // BottomAppBar 배경색
        ),

        // 그 외 위젯 테마 설정 가능
      ),
      home: Scaffold(
        appBar: AppBar(
          // 이제 AppBar의 색상은 ThemeData에서 정의된 색상을 따릅니다.
        ),
        body: ListView(
          children: [
            // 리스트 뷰
          ],
        ),
        bottomNavigationBar: const BottomAppBar(
          // 이제 BottomAppBar의 색상은 ThemeData에서 정의된 색상을 따릅니다.
        ),
      ),
    );
  }
}