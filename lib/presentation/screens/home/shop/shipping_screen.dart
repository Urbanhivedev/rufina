import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rufina/presentation/general_widgets/app_bar.dart';
import 'package:rufina/presentation/routers/router.dart';

import '../../../../core/core.dart';
import '../play/play_screen.dart';

class ShippingScreen extends StatefulWidget {
  const ShippingScreen({super.key});

  @override
  State<ShippingScreen> createState() => _ShippingScreenState();
}

class _ShippingScreenState extends State<ShippingScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: customeAppBar(context, title: "Shipping"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          "Name",
                          style:
                              Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontSize: 20,
                                  ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: TextFormField(
                        decoration:
                            const InputDecoration(border: OutlineInputBorder()),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          "Email",
                          style:
                              Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontSize: 20,
                                  ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: TextFormField(
                        decoration:
                            const InputDecoration(border: OutlineInputBorder()),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          "Address",
                          style:
                              Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontSize: 20,
                                  ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: TextFormField(
                        maxLines: 7,
                        decoration:
                            const InputDecoration(border: OutlineInputBorder()),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pushNamedAndRemoveUntil(
                      context, AppRouters.homeScreen, (route) => false),
                  child: Container(
                    width: size.width / 2,
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColor.black[1000],
                    ),
                    child: Center(
                      child: Text(
                        "Submit".toUpperCase(),
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
          ],
        ),
      ),
    );
  }
}
