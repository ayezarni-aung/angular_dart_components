import 'package:angular/angular.dart';
import 'package:angular_project/app_component.template.dart' as ng;
import 'package:angular_project/in_memory_data_service.dart';
import 'package:angular_router/angular_router.dart';
import 'main.template.dart' as self;
import 'package:http/http.dart';

@GenerateInjector([
  routerProvidersHash,
  ClassProvider(Client, useClass: InMemoryDataService),
] // You can use routerProviders in production
    )
final InjectorFactory injector = self.injector$Injector;
void main() {
  runApp(ng.AppComponentNgFactory, createInjector: injector);
}
// void main() {
//   runApp(ng.AppComponentNgFactory);
// }
