import 'package:angular/angular.dart';
import 'src/hero.dart';
import 'src/mock_heroes.dart';
import 'src/hero_detail_component.dart';
import 'src/hero_service.dart';
import 'dart:async';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls: const ['app_component.css'],
  directives: const [CORE_DIRECTIVES, HeroDetailComponent],
  providers: const [HeroService]
)
class AppComponent implements OnInit {
  void ngOnInit() => getHeroes();

  final title = 'Tour of Heroes';
  final HeroService _heroService;
  List<Hero> heroes = mockHeroes;  // List of Hero

  Future<Null> getHeroes() async {
    heroes = await _heroService.getHeroes();
  }

  Hero selectedHero;  // Selected Hero
  AppComponent(this._heroService);
  void onSelect(Hero hero) => selectedHero = hero; // Click event

}