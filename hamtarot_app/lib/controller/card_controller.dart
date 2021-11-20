import 'dart:async';

import 'package:hamtarot_app/model/card_model.dart';
import 'package:hamtarot_app/service/card_service.dart';

class CardController {
  final Services service;
  List<Card1> card = List.empty();

  StreamController<bool> onSyncController = StreamController();
  Stream<bool> get onSync => onSyncController.stream; 

  CardController(this.service);

  Future<List<Card1>> Fectcard() async {
    onSyncController.add(true); 
    card = await service.getcard();
    onSyncController.add(false); 
    return card;
  }
}