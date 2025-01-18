import 'package:flutter/material.dart';
import 'package:touko/features/edit_screen/widgets/edit_body.dart';
import '../../core/shared_widgets/custom_app_bar.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          customAppBar(title: 'Edit Note', iconName:Icons.check),
      body: const EditBody(),
    );
  }
}
