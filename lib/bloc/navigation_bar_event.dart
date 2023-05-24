part of 'navigation_bar_bloc.dart';

abstract class NavigationBarEvent {}

class TabChangedEvent extends NavigationBarEvent {
  BottomMenu index;
  TabChangedEvent({required this.index});
}
