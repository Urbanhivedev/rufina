import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rufina/presentation/general_widgets/app_bar.dart';
import 'package:rufina/presentation/routers/router.dart';

import '../../../../core/core.dart';
import '../../../bottom_navigation/bottom_navigation.dart';
import '../../../end_drawer/end_drawer.dart';

class ShippingScreen extends StatefulWidget {
  const ShippingScreen({super.key});

  @override
  State<ShippingScreen> createState() => _ShippingScreenState();
}

class _ShippingScreenState extends State<ShippingScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      key: _key,
      appBar: customeAppBar(context, title: "Shipping"),
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
                    color: Colors.black26,
                    navTitle: "Play",
                  ),
                  navItemms(
                    context: context,
                    index: 2,
                    navIcon: "Bag_alt.svg",
                    color: Colors.black,
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Please fill in shipping details",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    // letterSpacing: 1,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              10), // Set the desired border radius
                          border: Border.all(
                              color: Colors
                                  .black38), // Optional: Set border properties
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border:
                                  InputBorder.none, // Remove the default border
                              hintText: "Name",
                              hintStyle: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500)),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              10), // Set the desired border radius
                          border: Border.all(
                              color: Colors
                                  .black38), // Optional: Set border properties
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border:
                                  InputBorder.none, // Remove the default border
                              hintText: "Phone Number",
                              hintStyle: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500)),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 120,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              10), // Set the desired border radius
                          border: Border.all(
                              color: Colors
                                  .black38), // Optional: Set border properties
                        ),
                        child: TextFormField(
                          maxLines: 4,
                          decoration: const InputDecoration(
                              border:
                                  InputBorder.none, // Remove the default border
                              hintText: "Address",
                              hintStyle: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500)),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamedAndRemoveUntil(
                              context, AppRouters.homeScreen, (route) => false),
                          child: Container(
                            width: size.width / 2,
                            height: 50,
                            decoration: BoxDecoration(
                                color: AppColor.yellow[900],
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "SUBMIT".toUpperCase(),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 18
                                    // letterSpacing: 1.5,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
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
}
