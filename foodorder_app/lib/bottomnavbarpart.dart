import 'dart:developer';
import 'package:floating_bottom_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:foodorder_app/homepage.dart';


class BottomNavigatorExample extends StatefulWidget {
  const BottomNavigatorExample({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  State<BottomNavigatorExample> createState() => _BottomNavigatorExampleState();
}

class _BottomNavigatorExampleState extends State<BottomNavigatorExample> {
  bool circleButtonToggle = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.white.withOpacity(0.9),
            floatingActionButton: const SizedBox(
              height: 50,
              width: 50,
            ),
            floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked,
            body: HomePage(),
            bottomNavigationBar: AnimatedBottomNavigationBar(
              bottomBarItems: [
                BottomBarItemsModel(
                  icon: const Icon(Icons.home_filled, size: 30),
                  iconSelected: const Icon(Icons.home_filled,
                      color: Colors.black,
                      size: 30),
                  //title: 'Home',
                  dotColor: Colors.black,
                  onTap: () {
                    log('HomePage');
                  },

                ),
                BottomBarItemsModel(
                  icon:
                  const Icon(Icons.sms_rounded, size: 30),
                  iconSelected: const Icon(Icons.sms_rounded,
                      color: Colors.black,
                      size: 30),
                  //title: 'Massage',
                  dotColor: Colors.black,
                  onTap: () {
                    log('Search');
                  },
                ),
                BottomBarItemsModel(
                  icon:
                  const Icon(Icons.preview, size: 30),
                  iconSelected: const Icon(Icons.preview,
                      color: Colors.black,
                      size: 30),
                  //title:'Review',
                  dotColor: Colors.black,
                  onTap: () {
                    log('Review');
                  },
                ),
                BottomBarItemsModel(
                    icon: const Icon(Icons.person,
                        size: 30),
                    iconSelected: const Icon(Icons.person,
                        color: Colors.black,
                        size: 30),
                    //title: "Person",
                    dotColor: Colors.black,
                    onTap: () {
                      log('Person');
                    }),
              ],
              bottomBarCenterModel: BottomBarCenterModel(
                centerBackgroundColor: Colors.black,
                centerIcon: const FloatingCenterButton(
                  child: Icon(
                    Icons.square_outlined,
                    color: AppColors.white,
                  ),
                ),
                centerIconChild: [
                  FloatingCenterButtonChild(
                    child: const Icon(
                      Icons.home,
                      color: AppColors.white,
                    ),
                    onTap: () => log('Item1'),
                  ),
                  FloatingCenterButtonChild(
                    child: const Icon(
                      Icons.home,
                      color: AppColors.white,
                    ),
                    onTap: () => log('Item2'),
                  ),
                  FloatingCenterButtonChild(
                    child: const Icon(
                      Icons.home,
                      color: AppColors.white,
                    ),
                    onTap: () => log('Item3'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}