import 'package:flutter/material.dart';
import 'package:symphony_app/core/constants/app_constants.dart';
import 'package:symphony_app/core/utils/colors_class.dart';

import '../../../../core/widgets/bottom_navigation/bottom_navigation.dart';

class LSOQueryScreen extends StatelessWidget {
  const LSOQueryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

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
        title: const Text(AppConstants.lSOQueryScreenTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 24.0, right: 16.0),
        child: Container(
          decoration: BoxDecoration(
            color:
                isDarkMode
                    ? Colors.grey.withValues(alpha: 0.1)
                    : ColorsClass.whiteColor,
            borderRadius: BorderRadius.circular(24),
            border:
                isDarkMode
                    ? null
                    : Border.all(color: ColorsClass.lessRed, width: 1.0),
          ),
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Service Tracking',
                style: TextStyle(
                  fontFamily: 'Urbanist',
                  color:
                      isDarkMode
                          ? ColorsClass.whiteColor
                          : ColorsClass.blackColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Enter LSO',
                style: TextStyle(
                  fontFamily: 'Urbanist',
                  color:
                      isDarkMode ? ColorsClass.textGrey : ColorsClass.lessBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 12),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter LSO : eg : PAN-00950100',
                  hintStyle: TextStyle(
                    fontFamily: 'Urbanist',
                    color:
                        isDarkMode ? ColorsClass.textGrey : ColorsClass.white50,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      color:
                          isDarkMode
                              ? ColorsClass.borderBlack20
                              : ColorsClass.borderBlack,
                      width: 1.5,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      color:
                          isDarkMode
                              ? ColorsClass.borderBlack20
                              : ColorsClass.borderBlack,
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color:
                          isDarkMode
                              ? ColorsClass.borderBlack20
                              : ColorsClass.borderBlack,
                      width: 1.5,
                    ),
                  ),
                  filled: true,
                  fillColor:
                      isDarkMode
                          ? Colors.grey.withValues(alpha: 0.1)
                          : ColorsClass.borderBlack20,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                ),
              ),
              SizedBox(height: 22),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsClass.accentColor,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  textStyle: TextStyle(fontSize: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                  child: Text(
                    'Get Information',
                    style: TextStyle(
                      fontFamily: 'Urbanist',
                      color: ColorsClass.whiteColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
