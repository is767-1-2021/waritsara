import 'package:flutter/material.dart';
import 'package:midterm_app/Model/form_model.dart';
import 'package:midterm_app/Pages/blank.dart';
import 'package:midterm_app/Pages/secondpage.dart';
import 'package:midterm_app/Pages/sixpage.dart';
import 'package:provider/provider.dart';
import 'Pages/firstpage.dart';
import 'Pages/thirdpage.dart';
import 'Pages/fourthpage.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FirstFormModel(),
          ),
        ],
       child: MyApp(),
     ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/Home',
      routes: <String, WidgetBuilder> {
        '/Home': (context) => MyHomePage(),
        '/1': (context) => FirstPage(),
        '/2': (context) => SecondPage(),
        '/3': (context) => ThirdPage(),
        '/4': (context) => FourthPage(),
        '/5': (context) => BlankPage(),
        '/6': (context) => SixPage(),

      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar (
        title: Text('Menu')
      ),
    body : Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.app_registration),
            title: Text('ลงทะเบียน'),
              onTap: (){
                Navigator.pushNamed(context, '/1');
              },
            ),
        ListTile(
          leading: Icon(Icons.insert_drive_file_outlined),
            title: Text('แสดงข้อมูล'),
              onTap: (){
                Navigator.pushNamed(context, '/2');
              },
            ),
        ListTile(
          leading: Icon(Icons.device_unknown_outlined),
            title: Text('ทำนายไพ่'),
              onTap: (){
                Navigator.pushNamed(context, '/3');
              },
            ),
        ListTile(
          leading: Icon(Icons.wysiwyg_rounded),
            title: Text('คำทำนาย'),
              onTap: (){
                Navigator.pushNamed(context, '/4');
              },
            ),
        ListTile(
          leading: Icon(Icons.insert_drive_file_outlined),
            title: Text('รูปแบบการทำนาย'),
              onTap: (){
                Navigator.pushNamed(context, '/6');
              },
            ),
            ListTile(
          leading: Icon(Icons.menu_book_outlined),
            title: Text('Test Menu'),
              onTap: (){
                Navigator.pushNamed(context, '/5');
              },
            ),
     ]
    ),
   );  
  }
}