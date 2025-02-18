import 'package:flutter/cupertino.dart';
import 'package:symphony_app/features/home/presentation/pages/home_screen.dart';
import 'package:symphony_app/features/service_center/data/service_center_item_data.dart';
import 'package:symphony_app/features/social/presentation/pages/social_screen.dart';
import 'package:symphony_app/features/website/presentation/pages/website_screen.dart';

import '../../features/check_support/data/check_support_item_data.dart';
import '../../features/specification/data/specification_item.dart';
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

  static List<ServiceCenterItemData> serviceCenterItemData = [
    ServiceCenterItemData(
      title: 'Badda (CC) - Dhaka',
      description:
          'Service Touch Point, Configure Bepari Shopping Complex, Badda, Dhaka - 1212',
      distance: '2.71 KM',
    ),
    ServiceCenterItemData(
      title: 'Badda (CC) - Dhaka',
      description:
          'Service Touch Point, Configure Bepari Shopping Complex, Badda, Dhaka - 1212',
      distance: '2.71 KM',
    ),
    ServiceCenterItemData(
      title: 'Badda (CC) - Dhaka',
      description:
          'Service Touch Point, Configure Bepari Shopping Complex, Badda, Dhaka - 1212',
      distance: '2.71 KM',
    ),
  ];

  static List<SpecificationItem> specificationItems = [
    SpecificationItem(
      iconPath: 'assets/icons/specification_icon_2.png',
      title: 'Processor',
      description: 'MediaTek Helio G99\n6nm 2.2GHz Octa\nCore',
    ),
    SpecificationItem(
      iconPath: 'assets/icons/specification_icon_3.png',
      title: 'Storage',
      description: 'ROM 128GB',
    ),
    SpecificationItem(
      iconPath: 'assets/icons/specification_icon_4.png',
      title: 'Display',
      description: '6.7" FHD+ AMOLED GGS 120Hz\nPunch Hole',
    ),
    SpecificationItem(
      iconPath: 'assets/icons/specification_icon_5.png',
      title: 'Ram',
      description: '16GB (8GB\nExpandable RAM)',
    ),
    SpecificationItem(
      iconPath: 'assets/icons/specification_icon_6.png',
      title: 'Sim Card',
      description: 'Nano+Nano/Micro\nTF Card',
    ),
    SpecificationItem(
      iconPath: 'assets/icons/specification_icon_7.png',
      title: 'Camera',
      description:
          '64MP + 2MP Macro Rear & 32MP Super Selfie\nwith Display Flash',
    ),
    SpecificationItem(
      iconPath: 'assets/icons/specification_icon_8.png',
      title: 'Network',
      description: '4G, 3G, 2G',
    ),
    SpecificationItem(
      iconPath: 'assets/icons/specification_icon_9.png',
      title: 'Battery',
      description: '5000mAh',
    ),
    SpecificationItem(
      iconPath: 'assets/icons/specification_icon_10.png',
      title: 'Device Sensors',
      description: 'Fingerprint/Proximity/Light/Gravity/Magnetic/\nGyro Sensor',
    ),
  ];
}
