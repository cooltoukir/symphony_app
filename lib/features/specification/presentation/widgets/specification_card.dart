import 'package:flutter/material.dart';

import '../../../../core/utils/colors_class.dart';
import '../../data/specification_item.dart';

class SpecificationCard extends StatelessWidget {
  final SpecificationItem item;

  const SpecificationCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: isDarkMode ? Colors.black.withValues(alpha: 0.2) : Colors.black,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(item.iconPath, width: 32, height: 32),
          const SizedBox(height: 8.0),
          Text(
            item.title,
            style: TextStyle(
              fontFamily: 'Urbanist',
              color: ColorsClass.titleWhite,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 4.0),
          Text(
            item.description,
            style: TextStyle(
              fontFamily: 'Urbanist',
              color: ColorsClass.whiteColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
