import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../routes/routes_name.dart';
import 'bloc/navigation_bloc.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color:
                    isDarkMode
                        ? Colors.white.withValues(alpha: 0.2)
                        : Colors.black.withValues(alpha: 0.1),
                spreadRadius: 0,
                blurRadius: 5,
                offset: const Offset(0, -3),
              ),
            ],
          ),
          child: SizedBox(
            height: 80.0,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              child: BottomNavigationBar(
                currentIndex: state.currentIndex,
                onTap: (index) {
                  context.read<NavigationBloc>().add(NavigateToScreen(index));
                  if (state.currentIndex == 1) {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      RoutesName.initialScreen,
                      (route) => false,
                    );
                  }
                },
                selectedItemColor: Colors.red,
                unselectedItemColor: Colors.grey,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.web_outlined),
                    label: 'Website',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.sensor_occupied),
                    label: 'Social',
                  ),
                ],
                type: BottomNavigationBarType.fixed,
              ),
            ),
          ),
        );
      },
    );
  }
}
