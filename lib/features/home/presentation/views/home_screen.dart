import 'package:flutter/material.dart';
import 'package:high_fidelity/features/home/presentation/views/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeBody()
    );
  }
}
