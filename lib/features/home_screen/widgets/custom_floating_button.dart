import 'package:flutter/material.dart';

import 'add_note_bottom_sheet.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          builder: (context) {
            return const AddNoteBottomSheet();
          },
        );
      },
      backgroundColor: Colors.lightBlueAccent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: const Icon(
        Icons.add,
        color: Colors.black,
      ),
    );
  }
}
