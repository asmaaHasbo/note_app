import 'package:flutter/material.dart';

Padding customAppBarIcon({required IconData iconName}) {
  return Padding(
    padding: const EdgeInsets.only(right: 16.0),
    child: IconButton(
      onPressed: () {},
      icon: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.grey.withOpacity(.5)),
        child: Center(
          child: Icon(
            iconName,
            color: Colors.white,
            size: 26,
          ),
        ),
      ),
    ),
  );
}
