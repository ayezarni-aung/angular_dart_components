import 'package:angular_project/hero_list_component.template.dart'
    as hero_list_template;
import 'package:angular_project/src/dashboard_component.template.dart'
    as dashboard_template;
import 'package:angular_project/src/route_path.dart';
import 'package:angular_router/angular_router.dart';
import 'hero_component.template.dart' as hero_template;

class Routes {
  static final heroes = RouteDefinition(
    routePath: RoutePaths.heroes,
    component: hero_list_template.HeroListComponentNgFactory,
  );
  static final dashboard = RouteDefinition(
    routePath: RoutePaths.dashboard,
    component: dashboard_template.DashboardComponentNgFactory,
  );

  static final hero = RouteDefinition(
    routePath: RoutePaths.hero,
    component: hero_template.HeroComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    hero,
    heroes,
    dashboard,
    RouteDefinition.redirect(
      path: '',
      redirectTo: RoutePaths.dashboard.toUrl(),
    ),
  ];
}
