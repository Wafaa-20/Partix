import 'package:partix/features/item_details/data/models/item_details_model.dart';

abstract class Item_detailsDatasource {
  Future<Item_detailsModel> getItem_details();
}

class Item_detailsDatasourceImpl implements Item_detailsDatasource {
  @override
  Future<Item_detailsModel> getItem_details() async {
    // TODO: implement actual data source logic
    // This is just a placeholder implementation
    return Item_detailsModel(
      id: '1',
      name: 'Item_details Name',
    );
  }
}
