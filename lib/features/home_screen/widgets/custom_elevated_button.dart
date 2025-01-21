import 'package:flutter/material.dart';
class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.lightBlueAccent,
          fixedSize: const Size( 350 , 50),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          )
      ),
      child: const Text('Add' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold), )
      ,);
  }
}
