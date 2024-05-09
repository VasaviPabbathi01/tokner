import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../base/bloc/base_bloc_state.dart';
part 'our_team_state.freezed.dart';
@freezed
class OurTeamState extends BaseBlocState with _$OurTeamState {
  const factory OurTeamState({
    @Default(1) int cardIndex,
}) = _OurTeamState;
}