import 'package:flutter/material.dart';
import 'package:touko/features/home_screen/widgets/build_note_item.dart';

class ListOfNoteCards extends StatelessWidget {
  const ListOfNoteCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) => const BuildNoteItem(),
      ),
    );
  }
}
