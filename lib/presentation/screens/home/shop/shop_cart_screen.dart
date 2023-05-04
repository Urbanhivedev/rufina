import 'package:flutter/material.dart';
import '../../../../core/colors.dart';
import '../../../general_widgets/app_bar.dart';
import '../../../routers/router.dart';

class ShopCartScreen extends StatefulWidget {
  const ShopCartScreen({super.key});

  @override
  State<ShopCartScreen> createState() => _ShopCartScreenState();
}

class _ShopCartScreenState extends State<ShopCartScreen> {
  List<Map<String, dynamic>> shopCartItems = [
    {
      "productName": "3.4FL RUM",
      "productIamge": "liquor23.png",
    },
    {
      "productName": "52 DECK",
      "productIamge": "drink1.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: customeAppBar(context, title: "Shop"),
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
              itemBuilder: (context, indext) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/image/${shopCartItems[indext]["productIamge"]}",
                        width: size.width / 3,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                color: AppColor.black[1000],
                              ),
                              child: Center(
                                child: Text(
                                  "-".toUpperCase(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5
                                      ?.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: 1.5,
                                      ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                decoration: BoxDecoration(
                                    // color: AppColor.black[1000],
                                    border: Border.all(
                                  width: 1,
                                )),
                                child: Center(
                                  child: Text(
                                    "1".toUpperCase(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5
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
                                  horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                color: AppColor.black[1000],
                              ),
                              child: Center(
                                child: Text(
                                  "+".toUpperCase(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5
                                      ?.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: 1.5,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: size.width / 2.5,
                          height: 40,
                          decoration: BoxDecoration(
                            color: AppColor.black[1000],
                          ),
                          child: Center(
                            child: Text(
                              "Delete".toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  ?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: 1.5,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pushNamed(
                    context,
                    AppRouters.shippingScreen,
                  ),
                  child: Container(
                    width: size.width / 2,
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColor.black[1000],
                    ),
                    child: Center(
                      child: Text(
                        "CONFIRM".toUpperCase(),
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1.5,
                            ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
