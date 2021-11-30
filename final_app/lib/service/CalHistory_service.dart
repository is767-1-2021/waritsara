import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:calculator/model/calculator_model.dart';

abstract class Services {
  Future <List<CalHistory>> getcalhistory();
}

class CalHistoryServices extends Services {
  @override
  Future<List<CalHistory>> getcalhistory() async {
    QuerySnapshot snapshot = await FirebaseFirestore.instance
    .collection('result')
    .get();
  
    AllCalHistory calhistory = AllCalHistory.fromSnapshot(snapshot);
    return calhistory.calhistory;
  }
}