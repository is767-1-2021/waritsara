import 'dart:async';
import 'package:calculator/model/calculator_model.dart';
import 'package:calculator/service/CalHistory_service.dart';

class CalHistoryController {
  final Services service;
  List<CalHistory> calhistory = List.empty();

  StreamController<bool> onSyncController =
      StreamController(); // checking status stream onsync (on process / finish)
  Stream<bool> get onSync => onSyncController.stream;

  CalHistoryController(this.service);

  Future<List<CalHistory>> fectcalhistory() async {
    onSyncController.add(true);
    calhistory = await service.getcalhistory();
    onSyncController.add(false);
    return calhistory;
  }
}