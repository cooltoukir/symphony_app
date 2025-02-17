import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symphony_app/core/di/locator.dart';
import 'package:symphony_app/core/routes/routes.dart';
import 'package:symphony_app/core/theme/app_theme.dart';

import 'core/routes/routes_name.dart';
import 'core/widgets/bottom_navigation/bloc/navigation_bloc.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final Routes _routes = getIt<Routes>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<NavigationBloc>(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system,
        initialRoute: RoutesName.initialScreen,
        onGenerateRoute: _routes.generateRoute,
      ),
    );
  }
}
