import 'package:flutter/material.dart';
import 'package:touko/features/home_screen/widgets/custom_floating_button.dart';
import 'package:touko/features/home_screen/widgets/home_body.dart';
import '../../core/shared_widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'Notes', iconName: Icons.search),
      floatingActionButton: const CustomFloatingButton(),
      body: const HomeBody(),

    );
  }
}

