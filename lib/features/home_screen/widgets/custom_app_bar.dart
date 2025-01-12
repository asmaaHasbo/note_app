import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar(){
  return  AppBar(
    title: const Text(
      'Notes',
      style: TextStyle(fontSize: 24),
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: Container(
            height: 50,
            width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.grey.withOpacity(.5)),
              child: const Icon(
                Icons.search,
                color: Colors.white,
              ))),
    ],
  );


}
