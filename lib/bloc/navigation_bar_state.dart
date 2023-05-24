part of 'navigation_bar_bloc.dart';

  class NavigationBarState {
  final BottomMenu menu;

  const NavigationBarState({
  this.menu = BottomMenu.home,
  });

  NavigationBarState copyWith({BottomMenu? menu}) {
  return NavigationBarState(
  menu: menu ?? this.menu,
  );
  }

  @override
  List<Object?> get props => [menu];
  }

  enum BottomMenu { home, basket, order, profile }
