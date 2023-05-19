import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rufina/presentation/screens/home/home_screen.dart';
import 'package:rufina/presentation/screens/home/play/play_screen.dart';
import 'package:rufina/presentation/screens/home/shop/shop_screen.dart';

import '../../../core/core.dart';
import '../end_drawer/end_drawer.dart';

class BottomNavigationScreen extends StatefulWidget {
  BottomNavigationScreen({
    super.key,
    this.selectedIndex,
  });
  int? selectedIndex;

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  int _selectedIndex = 0;

  setSelectedInted(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> activeScreen = [
    const HomeScreen(),
    const PlayScreen(),
    const ShopScreen(),
    // Container(),
  ];

  @override
  Widget build(BuildContext context) {
    setSelectedInted(widget.selectedIndex ?? _selectedIndex);
    widget.selectedIndex = null;
    return Scaffold(
      key: _key,
      body: activeScreen.elementAt(_selectedIndex),
      endDrawer: const CustomDrawer(),
      bottomNavigationBar: Visibility(
        visible: _selectedIndex == 0 ? false : true,
        child: Card(
          // surfaceTintColor: AppColor.fineChowGray300,
          borderOnForeground: false,
          // color: AppColor.fineChowGray300,
          child: Padding(
            padding:
                EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
            child: Container(
              height: 75,
              padding: const EdgeInsets.only(
                top: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  navItemms(
                    context: context,
                    index: 0,
                    navIcon: "Home.svg",
                    color: _selectedIndex == 0 ? Colors.black : Colors.black26,
                    navTitle: "Home",
                  ),
                  navItemms(
                    context: context,
                    index: 1,
                    navIcon: "Video.svg",
                    color: _selectedIndex == 1 ? Colors.black : Colors.black26,
                    navTitle: "Play",
                  ),
                  navItemms(
                    context: context,
                    index: 2,
                    navIcon: "Bag_alt.svg",
                    color: _selectedIndex == 2 ? Colors.black : Colors.black26,
                    navTitle: "Shop",
                  ),
                  navItemms(
                    context: context,
                    index: 3,
                    navIcon: "Filter.svg",
                    color: _selectedIndex == 3 ? Colors.black : Colors.black26,
                    navTitle: "Filter",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

// navigation items widget
  Material navItemms({
    required BuildContext context,
    required String navIcon,
    required String navTitle,
    required int index,
    required Color color,
  }) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          IconButton(
            onPressed: () {
              if (index == 3) {
                _key.currentState!.openEndDrawer();
              } else {
                setSelectedInted(index);
              }
            },
            icon: SvgPicture.asset(
              "$kSvgPath/$navIcon",
              width: 30,
              color: color,
            ),
          ),
          Text(
            navTitle,
            style: TextStyle(
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
