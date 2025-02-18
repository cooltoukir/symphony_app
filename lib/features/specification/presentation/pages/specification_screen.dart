import 'package:flutter/material.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/utils/colors_class.dart';
import '../../../../core/widgets/bottom_navigation/bottom_navigation.dart';
import '../widgets/specification_card.dart';

class SpecificationScreen extends StatelessWidget {
  const SpecificationScreen({super.key});

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
        title: const Text(AppConstants.specificationScreenTitle),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                  color:
                      isDarkMode
                          ? Colors.black.withValues(alpha: 0.2)
                          : Colors.black,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 16.0,
                        horizontal: 16.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Powered by',
                            style: TextStyle(
                              fontFamily: 'Urbanist',
                              color: ColorsClass.white80,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Android™ 14',
                            style: TextStyle(
                              color: ColorsClass.green,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 8.0,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Image.asset(
                          'assets/icons/specification_icon_1.png',
                          width: 80,
                          height: 46,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),

            Wrap(
              spacing: 16.0,
              runSpacing: 16.0,
              children: [
                for (int i = 0; i < AppConstants.specificationItems.length; i++)
                  if (i == 0 || i == 1)
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: 150,
                        maxHeight: 150,
                        minWidth: (MediaQuery.of(context).size.width - 48) / 2,
                        maxWidth: (MediaQuery.of(context).size.width - 48) / 2,
                      ),
                      child: SpecificationCard(
                        item: AppConstants.specificationItems[i],
                      ),
                    )
                  else if (i == 2 || i == 5 || i == 8)
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 32,
                      child: SpecificationCard(
                        item: AppConstants.specificationItems[i],
                      ),
                    )
                  else
                    SizedBox(
                      width: (MediaQuery.of(context).size.width - 48) / 2,
                      child: SpecificationCard(
                        item: AppConstants.specificationItems[i],
                      ),
                    ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
