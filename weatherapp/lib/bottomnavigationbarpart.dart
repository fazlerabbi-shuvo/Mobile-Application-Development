import 'package:flutter/material.dart';
import 'package:weatherapp/homepage.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:weatherapp/page1.dart';
import 'package:weatherapp/page4.dart';

class BottomNavigationBarPart extends StatefulWidget {
  const BottomNavigationBarPart({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarPart> createState() => _BottomNavigationBarPartState();
}

class _BottomNavigationBarPartState extends State<BottomNavigationBarPart> {
  final _pageController = PageController(initialPage: 2);
  int maxCount = 5;
  /// widget list
  final List<Widget> bottomBarPages = [
    Page1(),
    Page1(),
    HomePage(),
    Page4(),
    Page4(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
        pageController: _pageController,
        color: Color(0xff2D388a).withOpacity(0.8),
        showLabel: false,
        notchColor: Color(0xff2D388a),
        bottomBarItems: [
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.search_outlined,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.search_outlined,
              color: Colors.amber,
            ),
            itemLabel: 'Page 1',
          ),
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.star,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.star,
              color: Colors.blueAccent,
            ),
            itemLabel: 'Page 2',
          ),

          ///svg example
          BottomBarItem(
            inActiveItem: Icon(Icons.home_filled,color: Colors.blueGrey),
            activeItem: Icon(Icons.home_filled,color: Colors.amber,),
            itemLabel: 'Page 3',
          ),
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.settings,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.settings,
              color: Colors.amber,
            ),
            itemLabel: 'Page 4',
          ),
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.person,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.person,
              color: Colors.yellow,
            ),
            itemLabel: 'Page 5',
          ),
        ],
        onTap: (index) {
          /// control your animation using page controller
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
          );
        },
      )
          : null,
    );
  }
}

