import 'package:e_commarce_v2_flutter/data/models/groceries_model.dart';
import 'package:get/get.dart';

class GroceriesController extends GetxController {
  var groceriesList = <GroceriesModel>[
    GroceriesModel(
        image: 'https://thumbs.dreamstime.com/b/pulses-selection-28684971.jpg',
        Name: 'Pulses',
        color: '#FEF1E4'),
    GroceriesModel(
        image:
            'https://c8.alamy.com/comp/EMC7RE/raw-rice-in-bag-and-on-a-table-EMC7RE.jpg',
        Name: 'Rice',
        color: '#E5F3EA')
  ].obs;
}
