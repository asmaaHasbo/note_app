import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:touko/add_cubit/add_note_cubit.dart';
import 'package:touko/modules/note_model.dart';

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
  String ? noteTitle , noteContent ;
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
              noteTitle = value;
              setState(() {

              });
            },
          ),
          CustomTextFiled(
            hint: 'Content',
            maxLines: 5,
            onSaved: (value) {
              noteContent = value;
              setState(() {

              });
            },
          ),
          const SizedBox(
            height: 30,
          ),
          CustomElevatedButton(onPressed: () {
            if(formKey.currentState!.validate()){
              formKey.currentState!.save();
              NoteModel noteModel = NoteModel(
                  noteContent: noteContent!,
                  noteTime: DateTime.now().year.toString() ,
                  noteTitle: noteTitle!,
                  color: Colors.lightBlueAccent.value
              );
              BlocProvider.of<AddNoteCubit>(context).addNoteFun(noteModel);
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