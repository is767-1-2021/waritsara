
import 'package:flutter/material.dart';

class BlankPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),
     body : Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.menu_book_outlined),
            title: Text('กลับสู่เมนูหลัก'),
              onTap: (){
                Navigator.pushNamed(context, '/Home');
              },
       ),]
     ),
   );
 }
}