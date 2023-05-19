import 'package:flutter/material.dart';
import 'package:rufina/core/core.dart';

PreferredSizeWidget customeAppBar(
  context, {
  required String title,
}) {
  return AppBar(
    actions: [
      Visibility(
        // visible: title.toLowerCase() == "play".toLowerCase() ? true : false,
        child: Container(
          margin: const EdgeInsets.only(
            right: 20,
            top: 10,
          ),
          child: const CircleAvatar(
            radius: 25,
            // backgroundColor: Color(0xffD9D9D9),
            backgroundImage: AssetImage("$kImagePath/profile.jpeg"),
          ),
        ),
      )
    ],
    automaticallyImplyLeading: false,
    // leading: Padding(
    //   padding: const EdgeInsets.only(left: 10.0),
    //   child: IconButton(
    //     icon: const Icon(
    //       Icons.arrow_back_ios,
    //       color: Colors.black,
    //     ),
    //     onPressed: () {
    //       Navigator.of(context).pop();
    //       // Define your custom back button action here
    //     },
    //   ),
    // ),
    centerTitle: false,
    backgroundColor: Colors.white,
    elevation: 0,
    title: Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Text(
        title,
        style: const TextStyle(
            fontWeight: FontWeight.w700, color: Colors.black, fontSize: 25),
      ),
    ),
  );
}
