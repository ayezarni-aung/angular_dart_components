import 'package:angular/core.dart';
import 'package:angular_components/angular_components.dart';

@Component(
    selector: 'my-appLayout',
    templateUrl: 'app_layout.html',
    directives: [
      MaterialButtonComponent,
      MaterialIconComponent,
      DeferredContentDirective,
      MaterialPersistentDrawerDirective,
      MaterialToggleComponent,
      MaterialListComponent,
      MaterialListItemComponent,
    ],
    styleUrls: [
      'app_layout.scss.css',
      'package:angular_components/app_layout/layout.scss.css',
    ])
class AppLayout {
  bool customWidth = false;
  bool end = false;
}
