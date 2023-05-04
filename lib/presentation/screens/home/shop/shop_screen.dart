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
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: customeAppBar(
        context,
        title: "Shop",
      ),
      body: Column(
        children: [
          Expanded(
            // alignment: Alignment.topCenter,
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 60.0,
                mainAxisExtent: 240,
              ),
              itemCount: shopItems.length,
              itemBuilder: (context, indext) => GestureDetector(
                onTap: () => Navigator.pushNamed(
                  context,
                  AppRouters.shopCartScreen,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/image/${shopItems[indext]["productIamge"]}",
                          width: size.width / 4,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "${shopItems[indext]["productName"]}",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    Container(
                      width: size.width / 2.5,
                      margin: const EdgeInsets.only(top: 5),
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: AppColor.black[1000],
                      ),
                      child: Text(
                        "Add".toUpperCase(),
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1.5,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
