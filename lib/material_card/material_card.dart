import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(selector: 'my-card', templateUrl: 'material_card.html', styleUrls: [
  'package:angular_components/css/mdc_web/card/mdc-card.scss.css',
  'material_card.scss.css'
], directives: [
  MaterialIconComponent,
  MaterialButtonComponent
])
class MaterialCardDemo {}
