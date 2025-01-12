import 'package:flutter/material.dart';
import 'package:touko/features/home_screen/widgets/search_icon.dart';

PreferredSizeWidget customAppBar(){
  return  AppBar(
    title: const Text(
      'Notes',
      style: TextStyle(fontSize: 24),
    ),
    actions: [
     searchIcon(),
    ],
  );


}
