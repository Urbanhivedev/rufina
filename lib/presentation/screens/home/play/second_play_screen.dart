import 'package:flutter/material.dart';
import 'package:rufina/core/colors.dart';
import 'package:rufina/presentation/routers/router.dart';
import '../../../general_widgets/app_bar.dart';

class PlayScondeScreen extends StatefulWidget {
  const PlayScondeScreen({super.key});

  @override
  State<PlayScondeScreen> createState() => _PlayScondeScreenState();
}

class _PlayScondeScreenState extends State<PlayScondeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: customeAppBar(
        context,
        title: "Play",
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                child: Container(
                  width: size.width / 2.5,
                  decoration: BoxDecoration(
                    color: AppColor.black[1000],
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        "2",
                        style: Theme.of(context).textTheme.headline1?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: AppColor.yellow[900],
                            ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                width: size.width / 1.2,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter email",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
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
                  child: Center(
                    child: Text(
                      "Invite".toUpperCase(),
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
                height: 30,
              ),
            ],
          )
        ],
      ),
    );
  }
}
