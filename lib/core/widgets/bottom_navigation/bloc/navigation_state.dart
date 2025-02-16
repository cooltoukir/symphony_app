part of 'navigation_bloc.dart';

@immutable
sealed class NavigationState {
  final int currentIndex;

  const NavigationState({required this.currentIndex});
}

final class NavigationInitial extends NavigationState {
  const NavigationInitial() : super(currentIndex: 1);
}

class NavigationChanged extends NavigationState {
  const NavigationChanged({required int newIndex})
    : super(currentIndex: newIndex);
}
