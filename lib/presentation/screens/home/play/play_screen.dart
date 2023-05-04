import 'package:flutter/material.dart';
import 'package:rufina/core/colors.dart';
import 'package:rufina/presentation/routers/router.dart';

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                  context,
                  AppRouters.playGameScreen,
                ),
                child: Container(
                  width: size.width / 2.4,
                  height: size.height / 4,
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
                        "1",
                        style:
                            Theme.of(context).textTheme.displayLarge?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.yellow[900],
                                ),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                  context,
                  AppRouters.playScondScreen,
                ),
                child: Container(
                  width: size.width / 2.4,
                  height: size.height / 4,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        "2",
                        style:
                            Theme.of(context).textTheme.displayLarge?.copyWith(
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
              Text(
                "Select\nPlayers".toUpperCase(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: Colors.black,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w700,
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
