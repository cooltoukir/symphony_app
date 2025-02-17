import 'package:flutter/material.dart';
import 'package:symphony_app/core/constants/app_constants.dart';

import '../../../../core/routes/routes_name.dart';
import '../../../../core/utils/colors_class.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppConstants.homeScreenTitle,
          style: TextStyle(
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color:
                isDarkMode
                    ? ColorsClass.lightPrimaryColor
                    : ColorsClass.darkPrimaryColor,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/icons/menu_icon.png',
              height: 24,
              width: 24,
              color:
                  isDarkMode
                      ? ColorsClass.lightPrimaryColor
                      : ColorsClass.darkPrimaryColor,
            ),
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, RoutesName.checkSupportScreen);
          },
          child: Text(
            'Go to Support Screen',
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
      ),
    );
  }
}
