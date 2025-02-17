import 'package:flutter/cupertino.dart';
import 'package:symphony_app/features/home/presentation/pages/home_screen.dart';
import 'package:symphony_app/features/social/presentation/pages/social_screen.dart';
import 'package:symphony_app/features/website/presentation/pages/website_screen.dart';

class AppConstants {
  // Screen Titles
  static const String homeScreenTitle = 'My Symphony';
  static const String websiteScreenTitle = 'Website Screen';
  static const String socialScreenTitle = 'Social Screen';
  static const String routeErrorTitle = 'Route Error';

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
}
