import 'package:flutter/material.dart';

Padding searchIcon() {
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
        child: const Center(
          child: Icon(
            Icons.search,
            color: Colors.white,
            size: 26,
          ),
        ),
      ),
    ),
  );
}
