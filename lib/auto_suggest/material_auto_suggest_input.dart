import 'package:angular/angular.dart';
import 'package:angular_components/laminate/popup/module.dart';
import 'package:angular_components/material_select/material_dropdown_select.dart';

@Component(
    selector: 'my-suggest',
    directives: [MaterialDropdownSelectComponent],
    templateUrl: 'material_auto_suggest_input.html',
    styleUrls: [
      'material_auto_suggest_input.scss.css',
      'package:angular_components/app_layout/layout.scss.css',
    ],
    providers: [popupBindings])
class MaterialDropdownSelectSimpleDemoComponent {
  final values = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
  int selectedValue = 1;
}
