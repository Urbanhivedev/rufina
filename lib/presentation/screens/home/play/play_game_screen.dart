import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rufina/core/colors.dart';
import 'package:rufina/presentation/general_widgets/app_bar.dart';

import '../../../../core/constants.dart';
import '../../../bottom_navigation/bottom_navigation.dart';
import '../../../end_drawer/end_drawer.dart';

class PlayGameScreen extends StatefulWidget {
  const PlayGameScreen({super.key});

  @override
  State<PlayGameScreen> createState() => _PlayGameScreenState();
}

class _PlayGameScreenState extends State<PlayGameScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
  final PageController _pageController = PageController(initialPage: 0);
  var rand = Random();
  int _currentPage = 0;

  Map<String, dynamic> documentFields = {
    "data": [
      {"question": "What is the best decision you have made to date?"},
      {"question": "What is the best decision you have made to date?"},
      {"question": "What is the best decision you have made to date?"},
    ]
  };

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> itemDetailList =
        (documentFields['data'] as List)
            .map((itemDetail) => itemDetail as Map<String, dynamic>)
            .toList();
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      key: _key,
      appBar: customeAppBar(context, title: "Play"),
      endDrawer: const CustomDrawer(),
      bottomNavigationBar: Visibility(
        visible: true,
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
                    color: Colors.black26,
                    navTitle: "Home",
                  ),
                  navItemms(
                    context: context,
                    index: 1,
                    navIcon: "Video.svg",
                    color: Colors.black,
                    navTitle: "Play",
                  ),
                  navItemms(
                    context: context,
                    index: 2,
                    navIcon: "Bag_alt.svg",
                    color: Colors.black26,
                    navTitle: "Shop",
                  ),
                  navItemms(
                    context: context,
                    index: 3,
                    navIcon: "Filter.svg",
                    color: Colors.black26,
                    navTitle: "Filter",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: PageView.builder(
              itemCount: itemDetailList.length,
              physics: const ClampingScrollPhysics(),
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 35,
                      ),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: "SHOW YOUR BANK ",
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              letterSpacing: 1.5,
                              fontSize: 27),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'BALANCE ',
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w700,
                                color: AppColor.yellow[900],
                                letterSpacing: 1.5,
                                fontSize: 27,
                              ),

                              // style: TextStyle(
                              //     fontWeight: FontWeight.w700,
                              //     color: AppColor.yellow[900],
                              //     letterSpacing: 1.5,
                              //     fontSize: 27),
                            ),
                            TextSpan(
                              text: 'OR TAKE TWO SHOTS',
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  letterSpacing: 1.5,
                                  fontSize: 27),
                              // style: TextStyle(
                              //     fontWeight: FontWeight.w400,
                              //     color: Colors.black,
                              //     letterSpacing: 1.5,
                              //     fontSize: 27
                              //     ),
                            ),
                          ],
                        ),

                        // Text(
                        //   itemDetailList[index]['question'],
                        //   textAlign: TextAlign.center,
                        //   style: const TextStyle(
                        //       fontWeight: FontWeight.w700,
                        //       color: Colors.black,
                        //       letterSpacing: 1.5,
                        //       fontSize: 27),
                        // ),
                      )),
                );
              },
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child:
                              circularContainer(text: 'SHUFFLE', padding: 45),
                          onTap: () {
                            log(rand.nextInt(itemDetailList.length));
                            _pageController.jumpToPage(
                                rand.nextInt(itemDetailList.length));
                          },
                        ),
                        GestureDetector(
                          child: circularContainer(
                            text: 'NEXT',
                            padding: 35,
                            color: const Color(0xffFF8A00),
                          ),
                          onTap: () => _pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Material navItemms({
    required BuildContext context,
    required String navIcon,
    required int index,
    required Color color,
    required String navTitle,
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
                Navigator.push(
                  context,
                  MaterialPageRoute<Widget>(
                    builder: (context) => BottomNavigationScreen(
                      selectedIndex: index,
                    ),
                  ),
                );
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

  Container circularContainer({String? text, double? padding, Color? color}) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color ?? Colors.black,
      ),
      child: Padding(
        padding: EdgeInsets.all(padding ?? 25),
        child: Text(
          text!,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
