import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/utils/browser/window/module.dart';

@Component(
  selector: 'my-date-time',
  templateUrl: 'material_date_picker.html',
  directives: [MaterialDatepickerComponent, DateRangeInputComponent],
  providers: [windowBindings, datepickerBindings],
)
class MaterialDateTimeDemo {
  Date date = Date.today();
  DateRange limitToRange = DateRange(Date.today().add(years: -5), Date.today());
}
