import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'my-chip',
  templateUrl: 'material_chip.html',
  directives: [MaterialChipComponent, MaterialCheckboxComponent],
)
class MaterialChipDemo {}
