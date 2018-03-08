import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: const [formDirectives],
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