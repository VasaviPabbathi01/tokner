// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:tokner/src/presentation/app/bloc/app_bloc.dart' as _i3;
import 'package:tokner/src/presentation/base/common/common_bloc.dart' as _i4;
import 'package:tokner/src/presentation/ui/homePage/bloc/homepage_bloc.dart'
    as _i5;
import 'package:tokner/src/presentation/ui/our_team/bloc/our_team_bloc.dart'
    as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt $initGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.AppBloc>(() => _i3.AppBloc());
    gh.factory<_i4.CommonBloc>(() => _i4.CommonBloc());
    gh.factory<_i5.HomePageBloc>(() => _i5.HomePageBloc());
    gh.factory<_i6.OurTeamBloc>(() => _i6.OurTeamBloc());
    return this;
  }
}
