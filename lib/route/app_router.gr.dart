// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomepageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const Homepage(),
      );
    },
    DistributionPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const DistributionPage(),
      );
    },
    OurTeamPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const OurTeamPage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          HomepageRoute.name,
          path: '/',
        ),
        RouteConfig(
          DistributionPageRoute.name,
          path: '/DistributionPage',
        ),
        RouteConfig(
          OurTeamPageRoute.name,
          path: '/OurTeamPage',
        ),
      ];
}

/// generated route for
/// [Homepage]
class HomepageRoute extends PageRouteInfo<void> {
  const HomepageRoute()
      : super(
          HomepageRoute.name,
          path: '/',
        );

  static const String name = 'HomepageRoute';
}

/// generated route for
/// [DistributionPage]
class DistributionPageRoute extends PageRouteInfo<void> {
  const DistributionPageRoute()
      : super(
          DistributionPageRoute.name,
          path: '/DistributionPage',
        );

  static const String name = 'DistributionPageRoute';
}

/// generated route for
/// [OurTeamPage]
class OurTeamPageRoute extends PageRouteInfo<void> {
  const OurTeamPageRoute()
      : super(
          OurTeamPageRoute.name,
          path: '/OurTeamPage',
        );

  static const String name = 'OurTeamPageRoute';
}
