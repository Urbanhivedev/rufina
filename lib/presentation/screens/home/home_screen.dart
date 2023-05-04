import 'package:flutter/material.dart';
import 'package:rufina/presentation/routers/router.dart';

import '../../bottom_navigation/bottom_navigation.dart';

class HomeScreen extends StatefulWidget {
  final String? title;
  const HomeScreen({Key? key, this.title}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute<Widget>(
                  builder: (context) => BottomNavigationScreen(
                    selectedIndex: 1,
                  ),
                ),
              ),
              // onTap: () => Navigator.pushNamed(
              //   context,
              //   AppRouters.bottomNavigationScreen,
              //   arguments: {
              //     "index",
              //     1,
              //   },
              // ),
              child: Container(
                width: double.infinity,
                color: const Color(0xff000000),
                child: Center(
                  child: Text(
                    'Play'.toUpperCase(),
                    style: Theme.of(context).textTheme.headline2?.copyWith(
                          color: const Color(0xffF69C14),
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<Widget>(
                    builder: (context) => BottomNavigationScreen(
                      selectedIndex: 2,
                    ),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                color: const Color(0xffF69C14),
                child: Center(
                  child: Text(
                    'Shop'.toUpperCase(),
                    style: Theme.of(context).textTheme.headline2?.copyWith(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
