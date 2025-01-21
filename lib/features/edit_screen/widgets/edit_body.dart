import 'package:flutter/material.dart';

import '../../../core/shared_widgets/custom_text_filed.dart';
class EditBody extends StatelessWidget {
  const EditBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CustomTextFiled(hint:'Title', onSaved: (value){},),
          CustomTextFiled(hint:'Content' , maxLines: 5, onSaved: (value) {  },),
        ],
      ),
    );
  }
}
