import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../base/bloc/base_bloc_event.dart';

part 'homepage_event.freezed.dart';
@immutable
abstract class HomePageEvent extends BaseBlocEvent {
  const HomePageEvent();
}

class IsExpanded extends HomePageEvent{}

@freezed
class PresaleIndexChanged extends HomePageEvent with _$PresaleIndexChanged {
  const factory PresaleIndexChanged({required int index}) = _PresaleIndexChanged;
}