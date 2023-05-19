import 'package:flutter/material.dart';
import 'package:rufina/presentation/general_widgets/app_bar.dart';
import 'package:rufina/presentation/routers/router.dart';
import '../../../../core/core.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  List<Map<String, dynamic>> shopItems = [
    {
      "productName": "3.4FL RUM",
      "productIamge": "liquor23.png",
    },
    {
      "productName": "52 DECK",
      "productIamge": "drink1.png",
    },
    {
      "productName": "26 DECK",
      "productIamge": "drink2.png",
    },
    {
      "productName": "1.7FL RUM",
      "productIamge": "liquor23.png",
    },
    {
      "productName": "52 DECK",
      "productIamge": "drink1.png",
    },
    {
      "productName": "26 DECK",
      "productIamge": "drink2.png",
    },
    {
      "productName": "1.7FL RUM",
      "productIamge": "liquor23.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: customeAppBar(
        context,
        title: "Shop",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            const SizedBox(height: 15),
            Expanded(
              // alignment: Alignment.topCenter,
              child: GridView.builder(
                // scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                // clipBehavior: ,// Set to true to enable scrolling in ListView
                // physics:
                //     const NeverScrollableScrollPhysics(), // Disable scrolling in ListView
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  // Set to 2 to display items in pairs

                  childAspectRatio:
                      0.6, // Set aspect ratio to 1 to maintain square shape
                  crossAxisSpacing: 20,
                  // Set spacing between columns
                  mainAxisSpacing: 5,
                ),
                itemCount: shopItems.length,
                itemBuilder: (context, indext) => GestureDetector(
                  onTap: () => Navigator.pushNamed(
                    context,
                    AppRouters.shopCartScreen,
                  ),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        // height: 900,

                        decoration: const BoxDecoration(),
                        child: Card(
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 10),
                                child: SizedBox(
                                  height: 140,
                                  child: Image.asset(
                                    "assets/image/${shopItems[indext]["productIamge"]}",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "${shopItems[indext]["productName"]}",
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 46,
                              // width: size.width / 2.5,
                              // margin: const EdgeInsets.only(top: 5),
                              padding: const EdgeInsets.symmetric(
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                  color: AppColor.yellow[900],
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text(
                                  "Add",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    letterSpacing: 1.5,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
