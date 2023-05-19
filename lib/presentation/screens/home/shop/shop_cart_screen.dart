import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/colors.dart';
import '../../../../core/constants.dart';
import '../../../bottom_navigation/bottom_navigation.dart';
import '../../../end_drawer/end_drawer.dart';
import '../../../general_widgets/app_bar.dart';
import '../../../routers/router.dart';

class ShopCartScreen extends StatefulWidget {
  const ShopCartScreen({super.key});

  @override
  State<ShopCartScreen> createState() => _ShopCartScreenState();
}

class _ShopCartScreenState extends State<ShopCartScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // C
  List<Map<String, dynamic>> shopCartItems = [
    {
      "productName": "1.7FL Tequila",
      "productIamge": "liquor23.png",
      "productPrice": "\$25.00",
    },
    {
      "productName": "1.7FL Tequila",
      "productIamge": "liquor23.png",
      "productPrice": "\$25.00",
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      key: _key,
      appBar: customeAppBar(context, title: "Cart"),
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
        children: [
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                crossAxisSpacing: 0.0,
                mainAxisSpacing: 10.0,
                mainAxisExtent: 250,
              ),
              itemCount: shopCartItems.length,
              itemBuilder: (context, indext) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 200,
                        child: Card(
                          elevation: 4,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/image/${shopCartItems[indext]["productIamge"]}",
                              width: size.width / 3,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${shopCartItems[indext]["productName"]}",
                            style: const TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Price",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff969696)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "${shopCartItems[indext]["productPrice"]}",
                            style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w700,
                                color: AppColor.yellow[900]),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.black54)),
                                child: Center(
                                    child: Icon(
                                  Icons.remove,
                                  color: AppColor.black[1000],
                                )

                                    // Text(
                                    //   "-",
                                    //   style: TextStyle(
                                    //         color: AppColor.black[1000],
                                    //         fontWeight: FontWeight.w900,
                                    //         letterSpacing: 1.5,
                                    //       ),
                                    // ),
                                    ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  // decoration: BoxDecoration(
                                  //     // color: AppColor.black[1000],
                                  //     border: Border.all(
                                  //   width: 1,
                                  // )),
                                  child: Center(
                                    child: Text(
                                      "1".toUpperCase(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall
                                          ?.copyWith(
                                            color: AppColor.black[1000],
                                            fontWeight: FontWeight.w900,
                                            letterSpacing: 1.5,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.black54)),
                                child: Center(
                                    child: Icon(
                                  Icons.add,
                                  color: AppColor.black[1000],
                                )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => Navigator.pushNamed(
                      context,
                      AppRouters.shippingScreen,
                    ),
                    child: Container(
                      width: size.width / 2,
                      height: 50,
                      decoration: BoxDecoration(
                          color: AppColor.yellow[900],
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "CONFIRM".toUpperCase(),
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
