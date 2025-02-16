import 'package:flutter/material.dart';

import '../../../../core/widgets/bottom_navigation/bottom_navigation.dart';

class SpecificationScreen extends StatelessWidget {
  const SpecificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Specification'),
      ),
      body: const Center(child: Text('This is the Specification Screen')),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
