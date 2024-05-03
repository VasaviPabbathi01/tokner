import 'package:tokner/src/presentation/app/bloc/app_bloc.dart';
import 'package:tokner/src/presentation/app/bloc/app_state.dart';
import 'package:tokner/src/presentation/base/bloc_page/base_page_state.dart';
import 'package:data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared/shared.dart';

import '../../../generated/l10n.dart';
import '../../../route/app_router.dart';

import 'bloc/app_event.dart';

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends BasePageState<Application, AppBloc> with WidgetsBindingObserver {
  final _appRouter = GetIt.instance.get<AppRouter>();

  @override
  bool get isAppWidget => true;

  @override
  void initState() {
    bloc.add(const AppInitiated());
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAccessibilityFeatures() {
    Future.delayed(const Duration(milliseconds: 300), () {
      logger.log('Switch Contrast comes here ${MediaQuery.maybeHighContrastOf(context)}');
      checkThemeAndUpdate();
    });
    super.didChangeAccessibilityFeatures();
  }

  @override
  void didChangePlatformBrightness() {
    Future.delayed(const Duration(milliseconds: 300), checkThemeAndUpdate);
    super.didChangePlatformBrightness();
  }

  checkThemeAndUpdate() {
    final themeMode = AppearanceMode.system;
    if (themeMode == AppearanceMode.system || themeMode == AppearanceMode.contrast) {
      if (themeMode == AppearanceMode.system) {
        if (MediaQuery.maybeHighContrastOf(context) == true) {
          bloc.add(const AppThemeChanged(themeMode: AppearanceMode.contrast));
        } else {
          bloc.add(const AppThemeChanged(themeMode: AppearanceMode.system));
        }
      } else {
        bloc.add(const AppThemeChanged(themeMode: AppearanceMode.contrast));
      }
    }
  }

  double _getFontScale(double? scale) {
    return (scale ?? 0) >= 1.15 //2.0
        ? 1.16 //1.15
        : (scale ?? 0) <= 0.85 // -2.0
            ? 0.95 // 0.85
            : (scale ?? 1.1) != 1
                ? (scale ?? 1.1)
                : 1.1; //1.0
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        final MediaQueryData data = MediaQuery.of(context);
        bool isDevice = true;

        return MediaQuery(
          data: data.copyWith(textScaleFactor: _getFontScale(isDevice ? data.textScaleFactor : state.fontScale)),
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [LanguageTranslation.delegate],
            supportedLocales: LanguageTranslation.delegate.supportedLocales,
            routeInformationParser: _appRouter.defaultRouteParser(),
            routerDelegate: _appRouter.delegate(),
            localeResolutionCallback: (Locale? locale, Iterable<Locale> supportedLocales) {
              if (supportedLocales.any((element) => locale?.languageCode.contains(element.toString()) == true)) {
                String currentLanguageCode = state.currentLanguageCode ?? 'en';
                if (currentLanguageCode != locale!.languageCode) {
                  SchedulerBinding.instance.addPostFrameCallback((_) {
                    bloc.add(AppLanguageChanged(languageCode: locale.languageCode));
                  });
                }

                return locale;
              }
              return const Locale('en', '');
            },
          ),
        );
      },
    );
  }
}
