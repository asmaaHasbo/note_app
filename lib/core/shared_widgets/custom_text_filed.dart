import 'package:flutter/material.dart';
import 'package:touko/core/constant.dart';

import '../../features/home_screen/widgets/build_outline_border.dart';
class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    super.key,
    required this.hint,
    required this.onSaved,
    this.maxLines = 1,
  });

  final String hint ;
  final int maxLines ;
  final FormFieldSetter<String> onSaved;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextFormField(
        onSaved: onSaved,
        validator: (value){
          if( value?.isEmpty ?? true){
            return "Field is required";
          }
          else{
            return null;
          }
        },
        maxLines: maxLines,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          hintText: hint,
          border:buildOutlineInputBorder(sacanderyColor) ,
          enabledBorder: buildOutlineInputBorder(sacanderyColor),
          focusedBorder: buildOutlineInputBorder(mainColor),
        ),
      ),
    );
  }
}
