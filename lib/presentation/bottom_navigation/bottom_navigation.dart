import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rufina/presentation/routers/router.dart';
import 'package:rufina/presentation/screens/home/home_screen.dart';
import 'package:rufina/presentation/screens/home/play/play_screen.dart';
import 'package:rufina/presentation/screens/home/shop/shop_screen.dart';

import '../../../core/core.dart';

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
      endDrawer: Drawer(
        backgroundColor: Colors.black,
        width: MediaQuery.of(context).size.width / 1.5,
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Text(
              "SETTINGS",
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: AppColor.yellow[900],
                    fontWeight: FontWeight.w600,
                  ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppRouters.shopCartScreen);
                      },
                      child: Text(
                        "CART",
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                              color: AppColor.yellow[900],
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, AppRouters.playScreen);
                      },
                      child: Text(
                        "PROFILE",
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                              color: AppColor.yellow[900],
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
      bottomNavigationBar: Visibility(
        visible: _selectedIndex == 0 ? false : true,
        child: Card(
          // surfaceTintColor: AppColor.fineChowGray300,
          borderOnForeground: false,
          // color: AppColor.fineChowGray300,
          child: Container(
            height: 55,
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
                ),
                navItemms(
                  context: context,
                  index: 1,
                  navIcon: "Video.svg",
                  color: _selectedIndex == 1 ? Colors.black : Colors.black26,
                ),
                navItemms(
                  context: context,
                  index: 2,
                  navIcon: "Bag_alt.svg",
                  color: _selectedIndex == 2 ? Colors.black : Colors.black26,
                ),
                navItemms(
                  context: context,
                  index: 3,
                  navIcon: "Filter.svg",
                  color: _selectedIndex == 3 ? Colors.black : Colors.black26,
                ),
              ],
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
    required int index,
    required Color color,
  }) {
    return Material(
      color: Colors.white,
      child: IconButton(
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
    );
  }
}
