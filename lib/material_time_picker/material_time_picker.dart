import 'package:angular/angular.dart';
import 'package:angular_components/material_datepicker/material_time_picker.dart';
import 'package:angular_components/material_datepicker/module.dart';
import 'package:angular_components/utils/browser/window/module.dart';

@Component(
    selector: 'my-time-picker',
    templateUrl: 'material_time_picker.html',
    directives: [MaterialTimePickerComponent],
    providers: [windowBindings, datepickerBindings])
class MaterialTimePickerDemo {
  DateTime time = DateTime.now();
  DateTime optionalTime;
}
