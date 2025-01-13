import 'package:flutter/material.dart';
import 'package:touko/features/home_screen/widgets/custom_app_bar.dart';
import 'package:touko/features/home_screen/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: const HomeBody(),
    );
  }
}
