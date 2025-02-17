import 'package:flutter/material.dart';
import 'package:symphony_app/core/constants/app_constants.dart';

import '../../../../core/widgets/bottom_navigation/bottom_navigation.dart';

class ServiceCenterScreen extends StatelessWidget {
  const ServiceCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 50,
        leading: Padding(
          padding: const EdgeInsets.only(left: 14.0),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        titleSpacing: 4,
        title: const Text(AppConstants.serviceCenterScreenTitle),
      ),
      body: const Center(child: Text('This is the Service Center Screen')),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
