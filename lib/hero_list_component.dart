import 'package:angular/angular.dart';
import 'package:angular_project/src/hero_component.dart';
import 'package:angular_router/angular_router.dart';

import 'dart:async';

import 'src/hero.dart';
import 'src/hero_service.dart';
import 'src/route_path.dart';

@Component(
  selector: 'my-heroes',
  templateUrl: 'hero_list_component.html',
  styleUrls: ['hero_list_component.scss.css'],
  directives: [coreDirectives, HeroComponent],
  pipes: [commonPipes],
)
class HeroListComponent implements OnInit {
  final HeroService heroService;
  final Router _router;
  HeroListComponent(this.heroService, this._router);
  final title = 'Tour of Heroes';
  Hero selected;
  List<Hero> heroes;

  Future<void> getHero() async {
    heroes = await heroService.getAll();
  }

  Future<void> add(String name) async {
    name = name.trim();
    if (name.isEmpty) return null;
    heroes.add(await heroService.create(name));
    selected = null;
  }

  Future<void> delete(Hero hero) async {
    await heroService.delete(hero.id);
    heroes.remove(hero);
    if (selected == hero) selected = null;
  }

  Future<NavigationResult> gotoDetail() =>
      _router.navigate(_heroUrl(selected.id));

  void onSelect(Hero hero) => selected = hero;

  String _heroUrl(int id) =>
      RoutePaths.hero.toUrl(parameters: {idParam: '$id'});

  @override
  void ngOnInit() {
    getHero();
  }
}
