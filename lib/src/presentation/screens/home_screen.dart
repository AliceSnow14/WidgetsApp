import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widgets Apps"),
      ),
      backgroundColor: const Color.fromARGB(255, 149, 226, 236),
      body: Center(
        child: FilledButton(
          onPressed: () {},
          child: const Text("press"),
        ),
      ),
    );
  }
}
