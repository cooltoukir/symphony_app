import 'package:flutter/material.dart';
import 'package:symphony_app/core/constants/app_constants.dart';
import 'package:symphony_app/core/utils/colors_class.dart';
import 'package:symphony_app/features/service_center/presentation/widgets/service_center_card_widget.dart';

import '../../../../core/widgets/bottom_navigation/bottom_navigation.dart';

class ServiceCenterScreen extends StatelessWidget {
  const ServiceCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor:
          isDarkMode ? ColorsClass.blackColor : ColorsClass.whiteColor,
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
      body: Stack(
        children: [
          Container(
            height: 280,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/service_center_image_1.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.59,
            minChildSize: 0.59,
            maxChildSize: 1.0,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color:
                      isDarkMode
                          ? ColorsClass.blackColor
                          : ColorsClass.whiteColor,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                  border: Border(
                    top: BorderSide(color: ColorsClass.lessRed, width: 1.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: ColorsClass.black50,
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, -3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15.0),
                      width: 60,
                      height: 5,
                      decoration: BoxDecoration(
                        color:
                            isDarkMode ? ColorsClass.grey : ColorsClass.black10,
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                    ),
                    Expanded(
                      child: ListView.separated(
                        controller: scrollController,
                        itemCount: AppConstants.serviceCenterItemData.length,
                        separatorBuilder:
                            (context, index) => Divider(
                              color:
                                  isDarkMode
                                      ? ColorsClass.grey20
                                      : ColorsClass.black10,
                              height: 1,
                              thickness: 1,
                              indent: 16.0,
                              endIndent: 16.0,
                            ),
                        itemBuilder: (BuildContext context, int index) {
                          return ServiceCenterCardWidget(
                            title:
                                AppConstants.serviceCenterItemData[index].title,
                            description:
                                AppConstants
                                    .serviceCenterItemData[index]
                                    .description,
                            distance:
                                AppConstants
                                    .serviceCenterItemData[index]
                                    .distance,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
