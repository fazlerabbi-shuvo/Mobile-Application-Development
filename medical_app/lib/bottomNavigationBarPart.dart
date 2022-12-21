import 'package:flutter/material.dart';
import 'package:medical_app/contact.dart';
import 'package:medical_app/homepage.dart';
class BottomNavigationBarPart extends StatefulWidget {
  const BottomNavigationBarPart({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarPart> createState() => _BottomNavigationBarPartState();
}

class _BottomNavigationBarPartState extends State<BottomNavigationBarPart> {
  int _selectedIndex = 0;
  List myList = [
    HomePage(),
    HomePage(),
    HomePage(),
    Contact(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myList.elementAt(_selectedIndex),

      bottomNavigationBar:
      Container(
        height: 120,
        child: BottomNavigationBar(
          selectedIconTheme: IconThemeData(color: Color(0xff0857DE)),
          unselectedItemColor: Colors.black.withOpacity(0.4),
          currentIndex: _selectedIndex,
          selectedItemColor:Color(0xff0857DE),
          selectedLabelStyle: myFont(16, Colors.black,FontWeight.bold),
          //showSelectedLabels: false,
          iconSize: 30,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled,),
                label: 'Home Page'
            ),
            BottomNavigationBarItem(icon: Icon(Icons.description_outlined,),label: 'NewsFeed'),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined),label: 'Calender'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
