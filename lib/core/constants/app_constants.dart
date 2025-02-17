import 'package:flutter/cupertino.dart';
import 'package:symphony_app/features/home/presentation/pages/home_screen.dart';
import 'package:symphony_app/features/social/presentation/pages/social_screen.dart';
import 'package:symphony_app/features/website/presentation/pages/website_screen.dart';

import '../../features/check_support/data/check_support_item_data.dart';
import '../routes/routes_name.dart';

class AppConstants {
  // Screen Titles
  static const String homeScreenTitle = 'My Symphony';
  static const String websiteScreenTitle = 'Website Screen';
  static const String socialScreenTitle = 'Social Screen';
  static const String routeErrorTitle = 'Route Error';
  static const String checkSupportScreenTitle = 'Check Support';
  static const String lSOQueryScreenTitle = 'LSO Query';
  static const String serviceCenterScreenTitle = 'Service Center';
  static const String specificationScreenTitle = 'Specification';

  // Button Labels
  static const String supportButtonLabel = 'Check Support';

  // Error Messages
  static const String routeErrorMessage = 'No route generated!';

  // Other Constants
  static const String needHelp = 'Need Help?';
  static const String trendingItems = 'Trending items';
  static const String mobiles = 'Mobiles';
  static const String watches = 'Watches';
  static const String accessories = 'Accessories';
  static const String entertainment = 'Entertainment';
  static const String eWarrantyCard = 'E-warranty card';
  static const String games = 'Games';
  static const String seeMore = 'See more';
  static const String joinSocialCommunity = 'JOIN SOCIAL COMMUNITY';

  static const List<Widget> bottomNavBarScreens = [
    WebsiteScreen(),
    HomeScreen(),
    SocialScreen(),
  ];

  static List<CheckSupportItemData> supportItems = [
    CheckSupportItemData(
      label: 'Hotline',
      imageAsset: 'assets/icons/check_support_icon_1.png',
      routeName: '',
    ),
    CheckSupportItemData(
      label: 'Service Center',
      imageAsset: 'assets/icons/check_support_icon_2.png',
      routeName: RoutesName.serviceCenterScreen,
    ),
    CheckSupportItemData(
      label: 'LSO Query',
      imageAsset: 'assets/icons/check_support_icon_3.png',
      routeName: RoutesName.lsoQueryScreen,
    ),
    CheckSupportItemData(
      label: 'Feedback',
      imageAsset: 'assets/icons/check_support_icon_4.png',
      routeName: '',
    ),
    CheckSupportItemData(
      label: 'Specification',
      imageAsset: 'assets/icons/check_support_icon_5.png',
      routeName: RoutesName.specificationScreen,
    ),
    CheckSupportItemData(
      label: 'Book An Appointment',
      imageAsset: 'assets/icons/check_support_icon_6.png',
      routeName: '',
    ),
  ];
}
