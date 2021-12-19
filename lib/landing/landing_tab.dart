import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:watch_this/landing/tabs/home_tab.dart';
import 'package:watch_this/landing/tabs/search_tab.dart';
import 'package:watch_this/landing/tabs/bookmark_tab.dart';

class LandingTab extends StatefulWidget {
  const LandingTab({Key? key}) : super(key: key);

  @override
  _LandingTabState createState() => _LandingTabState();
}

class _LandingTabState extends State<LandingTab> {
  int pageIndex = 0;
  List<Widget> pageList = <Widget>[
    HomeTab(),
    SearchTab(),
    BookmarkTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageTransitionSwitcher(
          transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
              FadeThroughTransition(
                animation: primaryAnimation,
                secondaryAnimation: secondaryAnimation,
                child: child,
              ),
              child: pageList[pageIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purpleAccent,
        unselectedItemColor: const Color(0xFFE040FB).withOpacity(0.3), // This is the color code for purple accent
        currentIndex: pageIndex,
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.local_fire_department), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "Bookmarks")
        ],
      ),
    );
  }
  
}