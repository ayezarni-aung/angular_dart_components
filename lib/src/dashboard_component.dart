import 'package:angular/angular.dart';
import 'package:angular_project/src/hero.dart';
import 'package:angular_project/src/hero_search_component.dart';
import 'package:angular_project/src/hero_service.dart';
import 'package:angular_project/src/route_path.dart';
import 'package:angular_router/angular_router.dart';

@Component(
    selector: 'my-dashboard',
    templateUrl: 'dashboard_component.html',
    directives: [coreDirectives, HeroSearchComponent, routerDirectives])
class DashboardComponent implements OnInit {
  List<Hero> heroes;

  final HeroService _heroService;

  DashboardComponent(this._heroService);
  String heroUrl(int id) => RoutePaths.hero.toUrl(parameters: {idParam: '$id'});
  List<int> aa = [];
  @override
  void ngOnInit() async {
    heroes = (await _heroService.getAll()).skip(1).take(4).toList();
// aa.fold(0,max);
  }
}
