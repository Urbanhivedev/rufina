import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rufina/core/colors.dart';
import 'package:rufina/presentation/general_widgets/app_bar.dart';
import 'package:rufina/presentation/screens/home/play/play_screen.dart';

class PlayGameScreen extends StatefulWidget {
  const PlayGameScreen({super.key});

  @override
  State<PlayGameScreen> createState() => _PlayGameScreenState();
}

class _PlayGameScreenState extends State<PlayGameScreen> {
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
      appBar: customeAppBar(context, title: "Play"),
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
                    child: Text(
                      itemDetailList[index]['question'],
                      textAlign: TextAlign.center,
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                letterSpacing: 1.5,
                              ),
                    ),
                  ),
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
                              circularContainer(text: 'SHUFFLE', padding: 50),
                          onTap: () {
                            log(rand.nextInt(itemDetailList.length));
                            _pageController.jumpToPage(
                                rand.nextInt(itemDetailList.length));
                          },
                        ),
                        GestureDetector(
                          child: circularContainer(text: 'NEXT', padding: 40),
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

  Container circularContainer({String? text, double? padding}) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
      ),
      child: Padding(
        padding: EdgeInsets.all(padding ?? 25),
        child: Text(
          text!,
          style: TextStyle(
            color: AppColor.yellow[900],
          ),
        ),
      ),
    );
  }
}
