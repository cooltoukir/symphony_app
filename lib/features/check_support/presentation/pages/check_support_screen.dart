import 'package:flutter/material.dart';
import 'package:symphony_app/core/constants/app_constants.dart';

import '../../../../core/routes/routes_name.dart';
import '../../../../core/widgets/bottom_navigation/bottom_navigation.dart';

class CheckSupportScreen extends StatelessWidget {
  CheckSupportScreen({super.key});

  final List<bool> isClickable = [false, true, true, false, true, false];
  final List<String?> routes = [
    null,
    RoutesName.serviceCenterScreen,
    RoutesName.lsoQueryScreen,
    null,
    RoutesName.serviceCenterScreen,
    null,
  ];

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
        title: const Text('Check Support'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 6,
        itemBuilder: (context, index) {
          return CustomGridItem(
            imagePath: 'assets/image${index + 1}.png',
            text: 'Item ${index + 1}',
            isClickable: isClickable[index],
            onTap:
                isClickable[index]
                    ? () => Navigator.pushNamed(context, routes[index]!)
                    : null,
          );
        },
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}

class CustomGridItem extends StatelessWidget {
  final String imagePath;
  final String text;
  final bool isClickable;
  final VoidCallback? onTap;

  const CustomGridItem({
    super.key,
    required this.imagePath,
    required this.text,
    required this.isClickable,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isClickable ? Colors.blue : Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, height: 50, width: 50),
            SizedBox(height: 8),
            Text(text, style: TextStyle(color: Colors.white, fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
