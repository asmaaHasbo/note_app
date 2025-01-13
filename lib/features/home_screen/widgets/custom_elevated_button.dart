import 'package:flutter/material.dart';
class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:(){},
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          fixedSize: const Size( 350 , 50),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          )
      ),
      child: const Text('Add' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold), )
      ,);
  }
}
