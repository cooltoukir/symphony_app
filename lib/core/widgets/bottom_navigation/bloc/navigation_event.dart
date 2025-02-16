part of 'navigation_bloc.dart';

@immutable
sealed class NavigationEvent {}

class NavigateToScreen extends NavigationEvent {
  final int screenIndex;

  NavigateToScreen(this.screenIndex);
}
