import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'my-tab',
  templateUrl: 'material_tab.html',
  directives: [
    MaterialTabPanelComponent,
    MaterialTabComponent,
    DeferredContentDirective,
  ],
  styleUrls: [
    'material_tab.scss.css',
  ],
  changeDetection: ChangeDetectionStrategy.OnPush,
)
class MaterialTabDemo {}
