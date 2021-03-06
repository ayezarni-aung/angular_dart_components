import 'package:angular/core.dart';
import 'package:angular_project/app_layout/app_layout.dart';
import 'package:angular_project/auto_suggest/material_auto_suggest_input.dart';
import 'package:angular_project/material_card/material_card.dart';
import 'package:angular_project/material_chip/material_chip.dart';
import 'package:angular_project/material_date_picker/material_date_picker.dart';
import 'package:angular_project/material_date_picker/material_date_time_picekr/material_date_time_picker.dart';
import 'package:angular_project/material_dialog/material_dialog.dart';
import 'package:angular_project/material_dropdown/material_dropdown_select.dart';
import 'package:angular_project/material_list/material_list.dart';
import 'package:angular_project/material_progress/material_progress.dart';
import 'package:angular_project/material_spinner/material_spinner.dart';
import 'package:angular_project/material_tab/material_tab.dart';
import 'package:angular_project/material_time_picker/material_time_picker.dart';
import 'package:angular_project/material_tooltip/material_tooltip.dart';
import 'package:angular_project/src/hero_service.dart';
import 'package:angular_project/src/route_path.dart';
import 'package:angular_project/src/routes.dart';
import 'package:angular_router/angular_router.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [
    routerDirectives,
    AppLayout,
    MaterialDropdownSelectSimpleDemoComponent,
    MaterialDialogDemo,
    MaterialCardDemo,
    MaterialChipDemo,
    MaterialDropDownSelectDemo,
    MaterialListDemo,
    MaterialProgressDemo,
    MaterialTabDemo,
    MaterialTooltipDemo,
    MaterialSpinnerDemo,
    MaterialDateTimeDemo,
    MaterialTimePickerDemo,
    MaterialDateTimePickerDemo
  ],
  providers: [ClassProvider(HeroService)],
  exports: [RoutePaths, Routes],
)
class AppComponent {
  String title = 'Title';
}
