import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
    selector: 'my-list',
    templateUrl: 'material_list.html',
    styleUrls: ['material_list.scss.css'],
    directives: [MaterialListComponent, MaterialListItemComponent])
class MaterialListDemo {}
