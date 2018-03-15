import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'src/hero_service.dart';
import 'src/heroes_component.dart';


@Component(
  selector: 'my-app',
  template: '''
    <h1>{{title}}</h1>
    <a [routerLink]="['Heroes']">Heroes</a>
   <router-outlet></router-outlet>
  ''',
  directives: const [ROUTER_DIRECTIVES],
  providers: const [HeroService],
)

@RouteConfig(
    const [
      const Route(
          path: '/heroes', //URL Match
          name: 'Heroes',  // Route Name
          component: HeroesComponent  // Activated Component
      )
    ]
)

class AppComponent {
  final title = 'Tour of Heroes';
}