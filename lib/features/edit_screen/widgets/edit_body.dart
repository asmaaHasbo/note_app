import 'package:flutter/material.dart';
import 'package:touko/core/shared_widgets/custom_text_filed.dart';
class EditBody extends StatelessWidget {
  const EditBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          CustomTextFiled(hint:'Title'),
          CustomTextFiled(hint:'Content' , maxLines: 5,),
        ],
      ),
    );
  }
}
