import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'my-dropdown',
  templateUrl: 'material_dropdown_select.html',
  directives: [MaterialDropdownSelectComponent],
  styleUrls: ['material_dropdown_select.scss.css'],
  providers: [popupBindings],
)
class MaterialDropDownSelectDemo {
  final myOptions = ['First', 'Second', 'Third', 'Fourth', 'Fifth'];
  String selectedValue = 'First';
}
