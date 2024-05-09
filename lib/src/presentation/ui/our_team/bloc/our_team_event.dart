import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../base/bloc/base_bloc_event.dart';

part 'our_team_event.freezed.dart';


@immutable
abstract class OurTeamEvent extends BaseBlocEvent {
  const OurTeamEvent();
}

@freezed
class CardIndexChanged extends OurTeamEvent with _$CardIndexChanged {
  const factory CardIndexChanged({required int index}) = _CardIndexChanged;
}

@freezed
class CardIndexIncrement extends OurTeamEvent
    with _$CardIndexIncrement {
  const factory CardIndexIncrement({
    required int index,
    required ScrollController controller,
    required double width,
  }) = _CardIndexIncrement;
}

@freezed
class CardIndexDecrement extends OurTeamEvent
    with _$CardIndexDecrement {
  const factory CardIndexDecrement({
    required int index,
    required ScrollController controller,
    required double width,
  }) = _CardIndexDecrement;
}