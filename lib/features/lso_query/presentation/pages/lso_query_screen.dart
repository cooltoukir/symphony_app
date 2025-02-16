import 'package:flutter/material.dart';
import 'package:symphony_app/core/constants/app_constants.dart';

import '../../../../core/widgets/bottom_navigation/bottom_navigation.dart';

class LSOQueryScreen extends StatelessWidget {
  const LSOQueryScreen({super.key});

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
        title: const Text('LSO Query'),
      ),
      body: const Center(child: Text('This is the LSO Query Screen')),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
