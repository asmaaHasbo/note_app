import 'package:flutter/material.dart';
import 'custom_elevated_button.dart';
import '../../../core/shared_widgets/custom_text_filed.dart';
class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextFiled(hint: 'Title',),
            CustomTextFiled(hint: 'Content', maxLines: 5,),
            SizedBox(
              height: 30,
            ),
            CustomElevatedButton(),
          ],
        ),
      ),
    );
  }

}


