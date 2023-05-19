import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rufina/core/colors.dart';
import 'package:rufina/presentation/routers/router.dart';
import '../../../../core/constants.dart';
import '../../../bottom_navigation/bottom_navigation.dart';
import '../../../end_drawer/end_drawer.dart';
import '../../../general_widgets/app_bar.dart';

class PlayScondeScreen extends StatefulWidget {
  const PlayScondeScreen({super.key});

  @override
  State<PlayScondeScreen> createState() => _PlayScondeScreenState();
}

class _PlayScondeScreenState extends State<PlayScondeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _key,
      appBar: customeAppBar(
        context,
        title: "Play",
      ),
      endDrawer: const CustomDrawer(),
      bottomNavigationBar: Visibility(
        visible: true,
        child: Card(
          // surfaceTintColor: AppColor.fineChowGray300,
          borderOnForeground: false,
          // color: AppColor.fineChowGray300,
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
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          const SizedBox(
            height: 50,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                // top: -10,
                left: -1,
                // bottom: -5,
                child: Transform.rotate(
                  angle: -6 * (pi / 180),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffFDEBD0),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: const Color(0xffFF8A00),
                          // color: const Color(0xffEEEEEE).withOpacity(0.2),
                          // borderRadius: BorderRadius.circular(15),
                          // border: Border.all(
                          //   color: const Color(0xffFFFFFF).withOpacity(0.5),
                        )),
                    height: (size.height / 3.5),
                    width: MediaQuery.of(context).size.width - 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: MediaQuery.of(context).size.width - 20,
                  height: size.height / 3.5,
                  decoration: BoxDecoration(
                      color: const Color(0xffFF8A00),
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                    child: Text(
                      "2",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 45),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // GestureDetector(
          //   onTap: () => Navigator.pushNamed(
          //     context,
          //     AppRouters.playGameScreen,
          //   ),
          //   child: SizedBox(
          //     // width: size.width / 2.4,
          //     // width: MediaQuery.of(context).size.width,
          //     // height: size.height / 3.5,
          //     child: Stack(
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.symmetric(horizontal: 20.0),
          //           child: Container(
          //             width: MediaQuery.of(context).size.width - 20,
          //             height: size.height / 3.5,
          //             decoration: BoxDecoration(
          //                 color: const Color(0xff222222),
          //                 borderRadius: BorderRadius.circular(15)),
          //             child: const Center(
          //               child: Text(
          //                 "1",
          //                 style: TextStyle(
          //                     fontWeight: FontWeight.w700,
          //                     color: Colors.white,
          //                     fontSize: 45),
          //               ),
          //             ),
          //           ),
          //         ),
          //         Positioned(
          //           // left: -25,
          //           // top: -20,
          //           child: Container(
          //             decoration: BoxDecoration(
          //                 color: const Color(0xffEEEEEE).withOpacity(0.2),
          //                 borderRadius: BorderRadius.circular(15),
          //                 border: Border.all(
          //                   color: const Color(0xffFFFFFF).withOpacity(0.5),
          //                 )),

          //             // width: 200 * sqrt2,
          //             // height: 200,
          //             width: MediaQuery.of(context).size.width,
          //             // width: double.infinity,
          //             height: (size.height / 3.5) + 20,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          const SizedBox(
            height: 60,
          ),
          const Text(
            "Invite a Player",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              // letterSpacing: 1,
              fontSize: 28,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 40,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    width: size.width / 1.2,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Player email",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () => Navigator.pushNamed(
                      context,
                      AppRouters.playGameScreen,
                    ),
                    child: Container(
                      width: size.width / 1.7,
                      height: 60,
                      decoration: BoxDecoration(
                        color: AppColor.black[1000],
                      ),
                      child: const Center(
                        child: Text(
                          "Invite",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1.5,
                              fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  // navigation items widget
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
}
