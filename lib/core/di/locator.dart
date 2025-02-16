import 'package:get_it/get_it.dart';

import '../routes/routes.dart';
import '../widgets/bottom_navigation/bloc/navigation_bloc.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<NavigationBloc>(NavigationBloc());
  getIt.registerSingleton<Routes>(Routes());
}
