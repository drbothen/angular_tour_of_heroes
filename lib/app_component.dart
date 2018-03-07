import 'package:angular/angular.dart';

@Component(
  selector: 'my-app',
  template: '''
  <h1>{{title}}</h1>
  <h2>{{hero.name}} details!</h2>
  <div><label>id: </label>{{hero.id}}</div>
  <div><label>name: </label>{{hero.name}}</div>
  ''',
)
class AppComponent {
  final title = 'Tour of Heroes';
  Hero hero = new Hero(1, 'Windstorm');
}

// Hero: This represent a hero in our app
class Hero {
  final int id;
  String name;

  Hero(this.id, this.name);
}