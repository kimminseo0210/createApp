import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 디버그 배너 제거
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white, // AppBar 배경색
          elevation: 0, // 그림자 제거
        ),
        scaffoldBackgroundColor: Colors.white, // 배경색
        bottomAppBarTheme: const BottomAppBarTheme(
          color: Colors.white, // BottomAppBar 배경색
        ),
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(), // ✅ 정상적으로 표시됨
      body: const Center(),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}

// ✅ Custom AppBar
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor, // ✅ 테마 적용
      elevation: Theme.of(context).appBarTheme.elevation, // ✅ 테마 적용
      titleSpacing: 0,
      leading: Padding(
        padding: EdgeInsets.only(left: 16.0), // 왼쪽 여백
        child: Image.asset(
          'assets/apple_logo.png', // 이미지 파일 경로
          //width: 24, // 아이콘 크기 조절
          //height: 24,
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 16.0), // 오른쪽 여백
          child: Icon(Icons.notifications_none, color: Colors.black), // 알림 아이콘
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

// ✅ Custom Bottom Navigation Bar
class CustomBottomNavBar extends StatefulWidget {
  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0; // 선택된 탭 인덱스

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed, // 4개 이상 아이템일 때 크기 고정
      currentIndex: _selectedIndex, // 현재 선택된 인덱스
      onTap: _onItemTapped, // 탭 클릭 시 변경
      selectedItemColor: Colors.blue, // 선택된 아이템 색상
      unselectedItemColor: Colors.grey, // 선택되지 않은 아이템 색상
      backgroundColor: Colors.white,
      // bottomNavBar 아이콘
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "홈",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.credit_card),
          label: "금융상품",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star),
          label: "추천",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart),
          label: "마이데이터",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.grid_view),
          label: "전체",
        ),
      ],
    );
  }
}