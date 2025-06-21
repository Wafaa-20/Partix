import 'package:partix/features/card/data/models/card_model.dart';

abstract class CardDatasource {
  Future<CardModel> getCard();
}

class CardDatasourceImpl implements CardDatasource {
  @override
  Future<CardModel> getCard() async {
    // TODO: implement actual data source logic
    // This is just a placeholder implementation
    return CardModel(
      id: '1',
      name: 'Card Name',
    );
  }
}
