import 'package:calculator/service/CalHistory_service.dart';
import 'package:calculator/model/calculator_model.dart';
import 'package:calculator/controller/calhistory_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class history extends StatefulWidget {
  @override
  _historyState createState() => _historyState();
}

class _historyState extends State<history> {
  CalHistoryServices? service;
  CalHistoryController? controller;
  List<CalHistory> calhistory = List.empty();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    service = CalHistoryServices();
    controller = CalHistoryController (service!);

    getcalhistory();
  }

  void getcalhistory() async {
    var newcalhistory = await controller!.fectcalhistory();

    setState(() {
      calhistory = newcalhistory;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Your History'),
          automaticallyImplyLeading: false,
      ),
      body: ListView.separated(
        itemCount: calhistory.isEmpty ? 1 : calhistory.length,
        itemBuilder: (context, index) {
          CalHistory newcalhistory = calhistory[index];
          return 
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(right: 5, left: 10),
                child: Row(
                  children: [Icon(Icons.calculate)],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  child: Container(
                    padding: EdgeInsets.only(right: 5, left: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(newcalhistory.historyCal),
                        Text(newcalhistory.historyResult),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        }, 
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            color: Colors.black,
          );
        },
      ),
    );
  }
}