import 'package:flutter/material.dart';

import 'custom_docra_icon.dart';

PreferredSizeWidget customAppBar({required title , required IconData iconName }) {
  return AppBar(
    title: Text(
      title,
      style: const TextStyle(fontSize: 24),
    ),
    actions: [
      customAppBarIcon(iconName: iconName ),
    ],
  );
}
