import 'package:flutter/material.dart';
class DeleteIcon extends StatelessWidget {
  const DeleteIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return  IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.delete,
        color: Colors.black,
        size: 30,
      ),
    );
  }
}
