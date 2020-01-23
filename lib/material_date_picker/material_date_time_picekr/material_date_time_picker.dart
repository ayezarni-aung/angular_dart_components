import 'package:angular/angular.dart';
import 'package:angular_components/material_datepicker/material_date_time_picker.dart';
import 'package:angular_components/material_datepicker/module.dart';
import 'package:angular_components/utils/browser/window/module.dart';

@Component(
    selector: 'my-date-time-picker',
    templateUrl: 'material_date_time_picker.html',
    directives: [MaterialDateTimePickerComponent],
    providers: [windowBindings, datepickerBindings])
class MaterialDateTimePickerDemo {
  DateTime dateTime = DateTime.now();
  DateTime optionalTime;
}
