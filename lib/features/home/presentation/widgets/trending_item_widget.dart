import 'package:flutter/material.dart';

import '../../../../core/utils/colors_class.dart';

class TrendingItemWidget extends StatelessWidget {
  final String title;
  final String image;

  const TrendingItemWidget({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.28,
      decoration: BoxDecoration(
        color: ColorsClass.whiteColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey.withValues(alpha: 0.3),
          width: 1.0,
        ),
      ),
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Urbanist',
              color: ColorsClass.darkPrimaryColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 4),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: AspectRatio(
              aspectRatio: 16 / 15,
              child: Image.asset(image, fit: BoxFit.fill),
            ),
          ),
        ],
      ),
    );
  }
}
