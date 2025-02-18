import 'package:flutter/material.dart';
import 'package:symphony_app/core/constants/app_constants.dart';

import '../../../../core/widgets/bottom_navigation/bottom_navigation.dart';
import '../widgets/support_item_widget.dart';

class CheckSupportScreen extends StatelessWidget {
  const CheckSupportScreen({super.key});

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
        title: const Text(AppConstants.checkSupportScreenTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
          childAspectRatio: 1.3,
          children:
              AppConstants.supportItems
                  .map((item) => SupportItemWidget(item: item))
                  .toList(),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
