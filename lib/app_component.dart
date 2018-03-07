import 'package:angular/angular.dart';

@Component(
  selector: 'my-app',
  template: '<h1>{{title}}</h1><h2>{{hero}} details!</h2>',
)
class AppComponent {
  final title = 'Tour of Heroes';
  var hero = 'Windstorm';
}

// Hero: This represent a hero in our app
class Hero {
  final int id;
  String name;

  Hero(this.id, this.name);
}