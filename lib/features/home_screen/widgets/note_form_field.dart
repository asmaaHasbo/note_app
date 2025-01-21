import 'package:flutter/material.dart';

import '../../../core/shared_widgets/custom_text_filed.dart';
import 'custom_elevated_button.dart';
class NoteFormField extends StatefulWidget {
  const NoteFormField({
    super.key,
  });

  @override
  State<NoteFormField> createState() => _NoteFormFieldState();
}

class _NoteFormFieldState extends State<NoteFormField> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String ? title , supTitle ;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          CustomTextFiled(
            hint: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          CustomTextFiled(
            hint: 'Content',
            maxLines: 5,
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 30,
          ),
          CustomElevatedButton(onPressed: () {
            if(formKey.currentState!.validate()){
              // var addNoteObject = blo
              formKey.currentState!.save();
            }
            else{
              autoValidateMode = AutovalidateMode.always;
              setState(() {
              });
            }
          },),
        ],
      ),
    );
  }
}