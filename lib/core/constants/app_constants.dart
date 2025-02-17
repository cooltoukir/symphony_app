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
  // static const String loginButtonLabel = 'Login';
  // static const String logoutButtonLabel = 'Logout';
  // static const String saveButtonLabel = 'Save';

  // Error Messages
  static const String routeErrorMessage = 'No route generated!';

  // static const String networkErrorMessage =
  //     'No internet connection. Please check your network settings.';

  // Other Constants
  // static const int maxItemsPerPage = 10;

  static const List<Widget> bottomNavBarScreens = [
    WebsiteScreen(),
    HomeScreen(),
    SocialScreen(),
  ];
}
