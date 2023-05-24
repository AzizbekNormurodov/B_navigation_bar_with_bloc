import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'navigation_bar_event.dart';

part 'navigation_bar_state.dart';

class NavigationBarBloc extends Bloc<NavigationBarEvent, NavigationBarState> {
  NavigationBarBloc() : super(const NavigationBarState(menu: BottomMenu.home)){
    on<TabChangedEvent>(_tabchangedHandler);
  }

  FutureOr<void> _tabchangedHandler(TabChangedEvent event, Emitter<NavigationBarState> emit) {
    emit(state.copyWith(menu: event.index));
  }
}
