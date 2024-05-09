import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import '../src/presentation/ui/distribution_module/distribution_page.dart';
import '../src/presentation/ui/homePage/homepage.dart';
import '../src/presentation/ui/our_team/our_team_component.dart';


part 'app_router.gr.dart';

@MaterialAutoRouter(routes: [
    AutoRoute(path: '/', page: Homepage, initial: true),
    AutoRoute(path: '/DistributionPage', page: DistributionPage),
    AutoRoute(path: '/OurTeamPage', page: OurTeamPage),


])
class AppRouter extends _$AppRouter {}