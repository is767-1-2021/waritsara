import 'package:flutter/material.dart';
import 'package:midterm_app/Model/form_model.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({ Key? key }) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page')
      ),
    body :Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Consumer<FirstFormModel>(
                builder: (context, form, child) {
                  return Text('${form.firstName} ${form.lastName} ${form.age}');
                },
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                Navigator.pushNamed(context, '/3');
              },
              child: Text('เริ่่มทำนาย'),
            ),
            FloatingActionButton.extended(
              onPressed: (){
              Navigator.pushNamed(context, '/Home');
              },
              icon: Icon(Icons.home,),
              label: Text('กลับสู่หน้าหลัก')
           ),
          ],
        ),
      ),
    );
  }
}