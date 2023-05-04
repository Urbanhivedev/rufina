import 'package:flutter/material.dart';
import 'package:rufina/core/core.dart';

PreferredSizeWidget customeAppBar(
  context, {
  required String title,
}) {
  return AppBar(
    actions: [
      Visibility(
        visible: title.toLowerCase() == "play".toLowerCase() ? true : false,
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
    leading: Container(),
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0,
    title: Container(
      margin: const EdgeInsets.only(top: 15),
      child: Text(
        title.toUpperCase(),
        style: Theme.of(context).textTheme.headline4?.copyWith(
              fontWeight: FontWeight.w600,
            ),
      ),
    ),
  );
}
