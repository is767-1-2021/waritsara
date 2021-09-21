import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
     initialRoute: '/_MyHomePageState',
     routes: <String, WidgetBuilder> {
        '/first': (context) => FirstPage(),
        '/second': (context) => SecondPage(),
        '/third': (context) =>ThirdPage(),
     }
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get body => null;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          title: Text('หมวด'),
            bottom: TabBar(
            tabs: [
              Tab(text: 'ความรัก',
                icon: Icon(Icons.favorite)),
              Tab(text: 'การงาน',
                icon: Icon(Icons.accessibility)),
              Tab(text: 'การเงิน',
                icon: Icon(Icons.account_balance)),
            ],
          ),
        ),
        body: Center(
          child: Image.asset('assets/01.png'),
        ),
        
       floatingActionButton: FloatingActionButton.extended(
       elevation: 4.0,
        icon: const Icon(Icons.find_in_page),
       label: const Text('ทำนาย'),
       onPressed: () {},
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
       ),
     );
   }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold (
      appBar: AppBar (
        title: Text('หมวด')
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: List.generate(4, (index) {
          return Center( 
            child: Column(
              children: <Widget>[
                IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),Text('ความรัก') ,
                IconButton(onPressed: (){}, icon: Icon(Icons.accessibility)),Text('การงาน'),
                IconButton(onPressed: (){}, icon: Icon(Icons.account_balance)),Text('การเงิน'),
                IconButton(onPressed: (){}, icon: Icon(Icons.health_and_safety)),Text('สุขภาพ'),
                ],
              ), 
            );
          }
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
children: [
    Container(
        width: 300,
        height: 350,
        color: Colors.white,
        child: Image.asset('assets/01.png'),
        alignment: Alignment.topCenter,
    ),
    Container(
        width: 200,
        height: 350,
        color: Colors.white,
        child: Image.asset('assets/01.png'),
        alignment: Alignment.center,
        padding: EdgeInsets.only(right: 50),
    ),
    Container(
        height: 150,
        width: 350,
        color: Colors.white,
        child: Image.asset('assets/01.png'),
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 20),
    ),
    Container(
        height: 100,
        width: 350,
        color: Colors.white,
        child: Image.asset('assets/01.png'),
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 25),
        ),
      ],
    );
  }
}

class ThirdPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Image.asset('assets/01.png'),
        Image.asset('assets/01.png'),
        Image.asset('assets/01.png'),
        ],
        scrollDirection: Axis.horizontal,
      
   );
  }
}