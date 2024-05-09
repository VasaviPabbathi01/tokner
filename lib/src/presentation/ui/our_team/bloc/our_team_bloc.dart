import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../base/bloc/base_bloc.dart';
import 'our_team_event.dart';
import 'our_team_state.dart';

@injectable
class OurTeamBloc extends BaseBloc<OurTeamEvent, OurTeamState> {
  OurTeamBloc() : super(const OurTeamState()) {
    on<CardIndexChanged>(onCardIndexChanged);
    on<CardIndexIncrement>(onCardIndexIncrement);
    on<CardIndexDecrement>(onCardIndexDecrement);
  }

  void onCardIndexChanged(CardIndexChanged event, Emitter<OurTeamState> emit) {
    emit(state.copyWith(cardIndex: event.index));
  }

  void onCardIndexIncrement(CardIndexIncrement event, Emitter<OurTeamState> emit) {
    if(state.cardIndex < 7) {
      emit(state.copyWith(cardIndex: event.index + 1));
      _animateToIndex(state.cardIndex,event.controller,event.width);
    }
  }

  void onCardIndexDecrement(CardIndexDecrement event, Emitter<OurTeamState> emit) {
    if(state.cardIndex < 8 && state.cardIndex != 0) {
      emit(state.copyWith(cardIndex: event.index - 1));
      _animateToIndex(state.cardIndex,event.controller,event.width);
    }
  }

  void _animateToIndex(int index, ScrollController controller, double width) {
    controller.animateTo(
      index*width,
      duration: const Duration(seconds: 1),
      curve: Curves.linear,
    );
  }
}
