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
        title: Text(AppConstants.homeScreenTitle),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 6.0),
            child: IconButton(
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
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Image Container
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  border: Border.all(
                    color: Colors.grey.withValues(alpha: 0.3),
                    width: 1.0,
                  ),
                ),
                clipBehavior: Clip.hardEdge,
                child: Image.asset(
                  'assets/images/home_image_1.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              const SizedBox(height: 16),

              // Need Help Container
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.checkSupportScreen);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorsClass.accentColor,
                    image: DecorationImage(
                      image: AssetImage('assets/images/home_image_2.png'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        ColorsClass.accentColor.withValues(alpha: 0.5),
                        BlendMode.darken,
                      ),
                    ),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: SizedBox(
                    height: 130,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ImageIcon(
                                AssetImage('assets/icons/home_icon_1.png'),
                                color: ColorsClass.whiteColor,
                                size: 40,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                AppConstants.needHelp,
                                style: TextStyle(
                                  fontFamily: 'Urbanist',
                                  color: ColorsClass.whiteColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                RoutesName.checkSupportScreen,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ColorsClass.whiteColor,
                              foregroundColor: ColorsClass.accentColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text(
                              AppConstants.supportButtonLabel,
                              style: TextStyle(
                                fontFamily: 'Urbanist',
                                color: ColorsClass.darkPrimaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Trending Items
              Text(
                AppConstants.trendingItems,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildCategoryItem(
                    context,
                    AppConstants.mobiles,
                    "assets/images/home_image_3.png",
                  ),
                  _buildCategoryItem(
                    context,
                    AppConstants.watches,
                    "assets/images/home_image_4.png",
                  ),
                  _buildCategoryItem(
                    context,
                    AppConstants.accessories,
                    "assets/images/home_image_5.png",
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Entertainment
              Text(
                AppConstants.entertainment,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                ),
                clipBehavior: Clip.hardEdge,
                child: Image.asset(
                  'assets/images/home_image_6.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              const SizedBox(height: 16),

              // E-warranty card
              Text(
                AppConstants.eWarrantyCard,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: 10),
              Container(
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  color:
                      isDarkMode
                          ? Colors.grey.withValues(alpha: 0.1)
                          : ColorsClass.darkPrimaryColor,
                  borderRadius: BorderRadius.circular(17),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(17),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(
                      'assets/images/home_image_7.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Games Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppConstants.games,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    Row(
                      children: [
                        Text(
                          AppConstants.seeMore,
                          style: TextStyle(
                            fontFamily: 'Lato',
                            color: ColorsClass.accentColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: ColorsClass.accentColor,
                          size: 14,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildGameItem("assets/images/home_image_8.png"),
                  _buildGameItem("assets/images/home_image_9.png"),
                  _buildGameItem("assets/images/home_image_10.png"),
                ],
              ),
              const SizedBox(height: 16),

              // JOIN SOCIAL COMMUNITY
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  image: DecorationImage(
                    image: AssetImage("assets/images/home_image_11.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                height: 140,
                width: double.infinity,
                child: Center(
                  child: Text(
                    AppConstants.joinSocialCommunity,
                    style: TextStyle(
                      fontFamily: 'Urbanist',
                      color: ColorsClass.whiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryItem(BuildContext context, String title, String image) {
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

  Widget _buildGameItem(String image) {
    return Container(
      width: 110,
      height: 130,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      clipBehavior: Clip.hardEdge,
      child: Image.asset(image, fit: BoxFit.fill),
    );
  }
}
