import 'package:flutter/material.dart';
import 'package:symphony_app/core/constants/app_constants.dart';
import 'package:symphony_app/core/routes/routes_name.dart';
import 'package:symphony_app/features/check_support/presentation/pages/check_support_screen.dart';
import 'package:symphony_app/features/lso_query/presentation/pages/lso_query_screen.dart';
import 'package:symphony_app/features/service_center/presentation/pages/service_center.dart';
import 'package:symphony_app/features/specification/presentation/pages/specification_screen.dart';
import 'package:symphony_app/initial_screen.dart';

class Routes {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.initialScreen:
        return MaterialPageRoute(builder: (context) => InitialScreen());
      case RoutesName.checkSupportScreen:
        return MaterialPageRoute(builder: (context) => CheckSupportScreen());
      case RoutesName.serviceCenterScreen:
        return MaterialPageRoute(builder: (context) => ServiceCenterScreen());
      case RoutesName.lsoQueryScreen:
        return MaterialPageRoute(builder: (context) => LSOQueryScreen());
      case RoutesName.specificationScreen:
        return MaterialPageRoute(builder: (context) => SpecificationScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(title: const Text(AppConstants.routeErrorTitle)),
          body: const Center(child: Text(AppConstants.routeErrorMessage)),
        );
      },
    );
  }
}
