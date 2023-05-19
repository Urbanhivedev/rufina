import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rufina/presentation/routers/router.dart';

import '../../../../core/colors.dart';
import '../../../general_widgets/app_bar.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({super.key});

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: customeAppBar(
        context,
        title: "Play",
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 40,
          ),

          // Container(
          //   width: 200,
          //   height: 200,
          //   color: Colors.blue,
          //   child: Transform.rotate(
          //     angle: -45 * (pi / 180), // Convert degrees to radians
          //     child: Container(
          //       color: Colors.black,
          //       alignment: Alignment.center,
          //       child: const Text(
          //         'Rotated Container',
          //         style: TextStyle(
          //           fontSize: 20,
          //           color: Colors.white,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => Navigator.pushNamed(
                      context,
                      AppRouters.playGameScreen,
                    ),
                    child: SizedBox(
                      // width: size.width / 2.4,
                      width: MediaQuery.of(context).size.width / 2 - 20,
                      height: size.height / 3.5,
                      child: Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2 - 20,
                            height: size.height / 3.5,
                            decoration: BoxDecoration(
                                color: const Color(0xff222222),
                                borderRadius: BorderRadius.circular(15)),
                            child: const Center(
                              child: Text(
                                "1",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: 45),
                              ),
                            ),
                          ),
                          Positioned(
                            left: -25,
                            top: -20,
                            child: Transform.rotate(
                              angle: -10 * (pi / 180),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xffEEEEEE)
                                        .withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: const Color(0xffFFFFFF)
                                          .withOpacity(0.5),
                                    )),

                                // width: 200 * sqrt2,
                                // height: 200,
                                width: size.width / 2.4,
                                height: (size.height / 3.5) + 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Container(
                    //   width: size.width / 2.4,
                    //   height: size.height / 4,
                    //   decoration: BoxDecoration(
                    //     color: AppColor.black[1000],
                    //     border: Border.all(
                    //       width: 1,
                    //     ),
                    //   ),
                    //   child: Center(
                    //     child: Padding(
                    //       padding: const EdgeInsets.symmetric(vertical: 20),
                    //       child: Text(
                    //         "1",
                    //         style:
                    //             Theme.of(context).textTheme.displayLarge?.copyWith(
                    //                   fontWeight: FontWeight.w600,
                    //                   color: AppColor.yellow[900],
                    //                 ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => Navigator.pushNamed(
                      context,
                      AppRouters.playScondScreen,
                    ),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - 20,
                      height: size.height / 3.5,
                      child: Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2 - 20,
                            height: size.height / 3.5,
                            decoration: BoxDecoration(
                                color: const Color(0xffFDEBD0),
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: const Color(0xffFF8A00),
                                )),
                            child: Center(
                              child: Text(
                                "2",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: AppColor.yellow[900],
                                    fontSize: 45),
                              ),
                            ),
                          ),
                          // Positioned(
                          //   left: -25,
                          //   top: -20,
                          //   child: Transform.rotate(
                          //     angle: -10 * (pi / 180),
                          //     child: Container(
                          //       decoration: BoxDecoration(
                          //           color: const Color(0xffEEEEEE).withOpacity(0.2),
                          //           borderRadius: BorderRadius.circular(15),
                          //           border: Border.all(
                          //             color:
                          //                 const Color(0xffFFFFFF).withOpacity(0.5),
                          //           )),

                          //       // width: 200 * sqrt2,
                          //       // height: 200,
                          //       width: size.width / 2.4,
                          //       height: (size.height / 4) + 20,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),

                    // Container(
                    //   width: size.width / 2.4,
                    //   height: size.height / 4,
                    //   decoration: BoxDecoration(
                    //     border: Border.all(
                    //       width: 1,
                    //     ),
                    //   ),
                    //   child: Center(
                    //     child: Padding(
                    //       padding: const EdgeInsets.symmetric(vertical: 20),
                    //       child: Text(
                    //         "2",
                    //         style:
                    //             Theme.of(context).textTheme.displayLarge?.copyWith(
                    //                   fontWeight: FontWeight.w600,
                    //                   color: AppColor.yellow[900],
                    //                 ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 50),
          Column(
            children: const [
              Text(
                "Select Players",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  // letterSpacing: 1,
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          )
        ],
      ),
    );
  }
}

// class customeButtomBar extends StatelessWidget {
//   const customeButtomBar({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                 border: Border.all(
//                   width: 1,
//                 ),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Text(
//                   "H",
//                   style: Theme.of(context).textTheme.bodyText1?.copyWith(
//                         fontWeight: FontWeight.w700,
//                       ),
//                 ),
//               ),
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 border: Border.all(
//                   width: 1,
//                 ),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Text(
//                   "P",
//                   style: Theme.of(context).textTheme.bodyText1?.copyWith(
//                         fontWeight: FontWeight.w700,
//                       ),
//                 ),
//               ),
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 border: Border.all(
//                   width: 1,
//                 ),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Text(
//                   "S",
//                   style: Theme.of(context).textTheme.bodyText1?.copyWith(
//                         fontWeight: FontWeight.w700,
//                       ),
//                 ),
//               ),
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 border: Border.all(
//                   width: 1,
//                 ),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Column(
//                   children: [
//                     Text(
//                       "-",
//                       style: Theme.of(context).textTheme.bodyText1?.copyWith(
//                             fontWeight: FontWeight.w700,
//                           ),
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//         const SizedBox(
//           height: 30,
//         ),
//       ],
//     );
//   }
// }
