import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'package:angular_app/app_component.dart';

void main() {
  bootstrap(
    AppComponent,
    [
      ROUTER_PROVIDERS,
      // remove in production
      provide(LocationStrategy, useClass: HashLocationStrategy),
    ]
  );
}
