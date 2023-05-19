import 'package:flutter/material.dart';

import '../../bottom_navigation/bottom_navigation.dart';

class HomeScreen extends StatefulWidget {
  final String? title;
  const HomeScreen({Key? key, this.title}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF8A00),
      body: Column(
        children: [
          GestureDetector(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute<Widget>(
                      builder: (context) => BottomNavigationScreen(
                        selectedIndex: 1,
                      ),
                    ),
                  ),
              // onTap: () => Navigator.pushNamed(
              //   context,
              //   AppRouters.bottomNavigationScreen,
              //   arguments: {
              //     "index",
              //     1,
              //   },
              // ),
              child: const _CustomCurvedBar()),
          // Container(
          //   decoration: const BoxDecoration(
          //     color: Colors.blue,
          //     borderRadius: BorderRadius.only(
          //       bottomLeft: Radius.circular(100),
          //       bottomRight: Radius.circular(200),
          //     ),
          //   ),
          //   child: ClipRRect(
          //     borderRadius: const BorderRadius.only(
          //       bottomLeft: Radius.circular(100),
          //       bottomRight: Radius.circular(200),
          //     ),
          //     child: Align(
          //       alignment: Alignment.topCenter,
          //       child: Container(
          //         // width: 200,
          //         // height: 100,
          //         color: Colors.blue,
          //       ),
          //     ),
          //   ),
          // ),

          //       CustomPaint(
          //     painter: CurvedContainerPainter(),
          //     child: Container(
          //       width: double.infinity,
          //       height: MediaQuery.of(context).size.height / 2,
          //       decoration: const BoxDecoration(
          //         color: Color(0xff000000),
          //       ),
          //       child: Center(
          //         child: Text(
          //           'Play'.toUpperCase(),
          //           style: Theme.of(context).textTheme.displayMedium?.copyWith(
          //                 color: const Color(0xffFF8A00),
          //                 fontWeight: FontWeight.w600,
          //               ),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<Widget>(
                    builder: (context) => BottomNavigationScreen(
                      selectedIndex: 2,
                    ),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                color: const Color(0xffFF8A00),
                child: const Center(
                  child: Text(
                    'Shop',
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w700,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomCurvedBar extends StatelessWidget {
  const _CustomCurvedBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ClipPath(
        clipper: WaveClipper(),
        child: Container(
          height: (MediaQuery.of(context).size.height / 2) + 60,
          decoration: const BoxDecoration(color: Colors.black),
        ),
      ),
      ClipPath(
        clipper: WaveClipper(),
        child: Container(
          height: (MediaQuery.of(context).size.height / 2) + 40,
          decoration:
              BoxDecoration(color: const Color(0xffFBFBFB).withOpacity(0.1)),
        ),
      ),
      ClipPath(
          clipper: WaveClipper(),
          child: Container(
            height: (MediaQuery.of(context).size.height / 2),
            decoration:
                BoxDecoration(color: const Color(0xffFBFBFB).withOpacity(0.05)),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30, left: 40),
              child: Container(
                child: const Center(
                  child: Text(
                    'Play',
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w700,
                        fontSize: 40),
                  ),
                ),

                // Align(
                //   alignment: Alignment.centerLeft,
                //   child: ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //         minimumSize: const Size(90, 35),
                //         backgroundColor: const Color(0xffF9EBE7),
                //         maximumSize: const Size(90, 35),
                //         shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(20),
                //             side: const BorderSide(
                //               color: Color(0xffF9EBE7),
                //             )),
                //         shadowColor: Colors.transparent,
                //         elevation: 0),
                //     onPressed: () {
                //       Navigator.pop(context);
                //       // Get.to(() => NavigationPage());
                //     },
                // child: Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                //   children: const [
                //     Text(
                //       'Back',
                //       style: TextStyle(
                //           fontSize: 11, color: CustomColors.mainPinkColor),
                //     ),
                //     Icon(
                //       Icons.arrow_back,
                //       color: CustomColors.mainPinkColor,
                //       size: 17,
                //     ),
                //   ],
                // ),
              ),
            ),
          )
          // Row(
          //   children: const [
          //     Text(
          //       'Let\'s Get Started',
          //       style: TextStyle(
          //           color: CustomColors.blackColor,
          //           fontSize: 25,
          //           fontWeight: FontWeight.w700),
          //       textAlign: TextAlign.center,
          //     ),
          //     SizedBox(
          //       width: 10,
          //     ),
          //     Icon(Icons.insert_emoticon)
          //   ],
          // ),
          ),
    ]);
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 50);
    // path.lineTo(0, size.height
    // size.height == MediaQuery.of(context).size.height / 2 + 5
    //     ? (MediaQuery.of(context).size.height / 2) + 10
    //     : size.height == (MediaQuery.of(context).size.height / 2) + 40
    //         ? (MediaQuery.of(context).size.height / 2) + 30
    //         : (MediaQuery.of(context).size.height / 2) + 50,
    // );
    var controlPoint = Offset(size.width / 2, size.height + 20);
    var endPoint = Offset(size.width, size.height - 90);
    path.quadraticBezierTo(
      controlPoint.dx,
      controlPoint.dy,
      endPoint.dx,
      endPoint.dy,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

// class WaveClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0, size.height - 30);
//     // var firstController = Offset(0, size.height - 70);
//     // var firstEnd = Offset(size.width / 4, size.height - 70);
//     // path.quadraticBezierTo(
//     //   firstController.dx,
//     //   firstController.dy,
//     //   firstEnd.dx,
//     //   firstEnd.dy,
//     // );
//     // path.lineTo(size.width - 100, size.height - 70);
//     var secondController = Offset(size.width - 55, size.height - 70);
//     var secondEnd = Offset(size.width, size.height - 70);
//     path.quadraticBezierTo(
//       secondController.dx,
//       secondController.dy,
//       secondEnd.dx,
//       secondEnd.dy,
//     );
//     path.lineTo(size.width, 0);
//     path.close;
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper oldClipper) {
//     return true;
//   }

//   InputDecoration formDecoration = const InputDecoration(
//       floatingLabelStyle: TextStyle(color: Colors.pink),
//       fillColor: Colors.pink,
//       focusedBorder:
//           UnderlineInputBorder(borderSide: BorderSide(color: Colors.pink)),
//       prefixIcon: Icon(
//         Icons.mail,
//         size: 20,
//       ),
//       labelText: 'Gender');
// }
