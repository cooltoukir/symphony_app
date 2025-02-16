import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symphony_app/core/constants/app_constants.dart';

import 'core/widgets/bottom_navigation/bloc/navigation_bloc.dart';
import 'core/widgets/bottom_navigation/bottom_navigation.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        return Scaffold(
          extendBody: true,
          body: AppConstants.bottomNavBarScreens[state.currentIndex],
          bottomNavigationBar: BottomNavigation(),
        );
      },
    );
  }
}
