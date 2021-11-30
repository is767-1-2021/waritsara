import 'package:cloud_firestore/cloud_firestore.dart';

class CalHistory  {
  final String historyCal;
  final String historyResult;

  CalHistory (this.historyCal, this.historyResult);

 factory CalHistory.fromJson(
    Map<String, dynamic> json,) {
    return CalHistory(
      json['historyCal'] as String,
      json['historyResult'] as String,
    );
  }

 static toJson() {}
}

class AllCalHistory {
  final List<CalHistory> calhistory;
  AllCalHistory(this.calhistory);

  factory AllCalHistory.fromJson(List<dynamic> json) {
    List<CalHistory> calhistory;

    calhistory = json.map((index) => CalHistory.fromJson(index)).toList();
    return AllCalHistory(calhistory);
  }

  factory AllCalHistory.fromSnapshot(QuerySnapshot s) {
    List<CalHistory> calhistory = s.docs.map((DocumentSnapshot ds) {
      return CalHistory.fromJson(ds.data() as Map<String, dynamic>);
    }).toList();

    return AllCalHistory(calhistory);
  }
}