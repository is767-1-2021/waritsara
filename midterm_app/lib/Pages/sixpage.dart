import 'package:flutter/material.dart';

class SixPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar (
        title: Text('รูปแบบการทำนาย')
      ),
      body : Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.app_registration),
            title: Text('ไพ่ 1 ใบ'),
              onTap: (){
                Navigator.pushNamed(context, '/3');
              },
            ),
        ListTile(
          leading: Icon(Icons.insert_drive_file_outlined),
            title: Text('ไพ่ 5 ใบ'),
              onTap: (){
                Navigator.pushNamed(context, '');
              },
            ),
        ListTile(
          leading: Icon(Icons.device_unknown_outlined),
            title: Text('เซียมซี'),
              onTap: (){
                Navigator.pushNamed(context, '');
              },
        ),
      ]
    ),
   );  
  }
}