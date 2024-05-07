import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../base/bloc/base_bloc.dart';
import 'homepage_event.dart';
import 'homepage_state.dart';


@injectable
class HomePageBloc extends BaseBloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(const HomePageState()){
    on<IsExpanded>(onIsExpanded);
    on<PresaleIndexChanged>(onPresaleIndexChanged);
  }

  void onIsExpanded(IsExpanded event, Emitter<HomePageState> emit){
    emit(state.copyWith(isExpanded: !state.isExpanded));
  }

  void onPresaleIndexChanged(PresaleIndexChanged event, Emitter<HomePageState> emit){
    emit(state.copyWith(presaleIndex: event.index));
  }
}
