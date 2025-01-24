import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:touko/add_cubit/add_note_cubit.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddNoteCubit, AddNoteState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,
              fixedSize: const Size(350, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              )
          ),
          child: state is AddNoteLoading ? const CircularProgressIndicator(color: Colors.black,) :
          const Text(
            'Add', style: TextStyle(fontSize: 20, color: Colors.black,  fontWeight: FontWeight.bold),)
          ,);
      },
    );
  }
}
