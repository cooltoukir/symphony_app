import 'package:flutter/material.dart';

import '../../../../core/utils/colors_class.dart';
import '../../data/check_support_item_data.dart';

class SupportItemWidget extends StatelessWidget {
  final CheckSupportItemData item;

  const SupportItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        color:
            isDarkMode
                ? Colors.grey.withValues(alpha: 0.1)
                : ColorsClass.whiteColor,
        borderRadius: BorderRadius.circular(16.0),
        border:
            isDarkMode
                ? null
                : Border.all(color: ColorsClass.moreBlue, width: 1.0),
      ),
      child: InkWell(
        onTap: () {
          if (item.routeName.isNotEmpty) {
            Navigator.pushNamed(context, item.routeName);
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('No action defined for ${item.label}')),
            );
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                item.imageAsset,
                width: 32,
                height: 32,
                fit: BoxFit.contain,
              ),
              Text(
                item.label,
                style: TextStyle(
                  fontFamily: 'Urbanist',
                  color:
                      isDarkMode
                          ? ColorsClass.whiteColor
                          : ColorsClass.darkPrimaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
