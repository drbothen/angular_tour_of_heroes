import 'dart:async';
import 'package:angular/angular.dart';
import 'hero.dart';
import 'hero_detail_component.dart';
import 'hero_service.dart';
@Component(
  selector: 'my-heroes',
  templateUrl: 'heroes_component.html',
  styleUrls: const ['heroes_component.css'],
  directives: const [CORE_DIRECTIVES, HeroDetailComponent],
)
class HeroesComponent implements OnInit {
  final title = 'Tour of Heroes';
  final HeroService _heroService;
  List<Hero> heroes;
  Hero selectedHero;
  HeroesComponent(
      this._heroService
      );
  Future<Null> getHeroes() async {
    heroes = await _heroService.getHeroes();
  }
  void ngOnInit() => getHeroes();
  void onSelect(Hero hero) => selectedHero = hero;
}
