import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/material_tooltip/material_tooltip.dart';

@Component(
  selector: 'my-tooltip',
  templateUrl: 'material_tooltip.html',
  directives: [
    MaterialButtonComponent,
    MaterialTooltipDirective,
  ],
  providers: [
    popupBindings,
  ],
)
class MaterialTooltipDemo {
  String get longString => 'Number of opportunities linked to this objective ';
}
