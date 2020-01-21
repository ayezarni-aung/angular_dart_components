import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'my-dialog',
  templateUrl: 'material_dialog.html',
  directives: [
    MaterialDialogComponent,
    MaterialButtonComponent,
    ModalComponent,
  ],
  providers: [overlayBindings],
)
class MaterialDialogDemo {
  bool showBasicDialog = false;
  //bool visible = false;
}
