import 'package:flutter/material.dart';

import '../../../../core/utils/colors_class.dart';

class ServiceCenterCardWidget extends StatelessWidget {
  final String title;
  final String description;
  final String distance;

  const ServiceCenterCardWidget({
    super.key,
    required this.title,
    required this.description,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Urbanist',
              color:
                  isDarkMode ? ColorsClass.whiteColor : ColorsClass.blackColor,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            description,
            style: TextStyle(
              fontFamily: 'Urbanist',
              color: isDarkMode ? ColorsClass.disGrey : ColorsClass.lessBlack,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            distance,
            style: TextStyle(
              fontFamily: 'Urbanist',
              color: ColorsClass.accentColor,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 16.0),
          Row(
            children: [
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsClass.accentColor,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {},
                icon: Icon(
                  Icons.directions,
                  color: ColorsClass.whiteColor,
                  size: 20,
                ),
                label: Text(
                  "Directions",
                  style: TextStyle(
                    fontFamily: 'Urbanist',
                    color: ColorsClass.whiteColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(width: 10.0),
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: isDarkMode ? ColorsClass.grey : ColorsClass.black20,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                  color:
                      isDarkMode
                          ? ColorsClass.whiteColor
                          : ColorsClass.accentColor,
                  size: 20,
                ),
                label: Text(
                  "Share",
                  style: TextStyle(
                    fontFamily: 'Urbanist',
                    color:
                        isDarkMode
                            ? ColorsClass.whiteColor
                            : ColorsClass.accentColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
