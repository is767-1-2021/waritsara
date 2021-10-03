import 'dart:math';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white), ),     
      scaffoldBackgroundColor: const Color(0xFFFFF8E1)),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
     initialRoute: '/home',
     routes: <String, WidgetBuilder> {
         '/home': (context) => MyHomePage(title: '',),
         '/first': (context) => FirstPage(),
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
      child :
       Stack( 
         children: <Widget>[
          Container(
            height: 500.0,
            child: Stack(
              children: <Widget>[
              Positioned(
                  top: 50.0,
                  left: 5.0,
                  child: InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> FirstPage()));
                  },
                      child: Image(
                          image: AssetImage('assets/card_back.png'),
                          fit: BoxFit.cover,
                          width: 200.0,
                          height: 300.0,),
                          ),
                        ),

              Positioned(
                  top: 50.0,
                  left: 30.0,
                  child: InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> FirstPage()));
                  },
                      child: Image(
                          image: AssetImage('assets/card_back.png'),
                          fit: BoxFit.cover,
                          width: 200.0,
                          height: 300.0,),
                          ),
                        ),

              Positioned(
                  top: 50.0,
                  left: 60.0,
                  child: InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> FirstPage()));
                  },
                      child: Image(
                          image: AssetImage('assets/card_back.png'),
                          fit: BoxFit.cover,
                          width: 200.0,
                          height: 300.0,),
                          ),
                        ),

              Positioned(
                  top: 50.0,
                  left: 90.0,
                  child: InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> FirstPage()));
                  },
                      child: Image(
                          image:  AssetImage('assets/card_back.png'),
                          fit: BoxFit.cover,
                          width: 200.0,
                          height: 300.0,),
                          ),
                         ),

               Positioned(
                  top: 50.0,
                  left: 120.0,
                  child: InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> FirstPage()));
                  },
                      child: Image(
                          image:  AssetImage('assets/card_back.png'),
                          fit: BoxFit.cover,
                          width: 200.0,
                          height: 300.0,)
                          ),
                        ),  

                Positioned(
                  top: 50.0,
                  left: 150.0,
                  child: InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> FirstPage()));
                     },
                      child: Image(
                          image:  AssetImage('assets/card_back.png'),
                          fit: BoxFit.cover,
                          width: 200.0,
                          height: 300.0,),
                          ),
                        ),  

               Positioned(
                  top: 50.0,
                  left: 180.0,
                  child: InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> FirstPage()));
                      },
                        child: Image(
                          image:  AssetImage('assets/card_back.png'),
                          fit: BoxFit.cover,
                          width: 200.0,
                          height: 300.0,),
                        ),
                      ),         
               ]
              ),
            ),
          ],
         ),
       ),
      bottomNavigationBar: SingleChildScrollView(
        child: CurvedNavigationBar(
          color: Color(0xFF6d4c41), 
          backgroundColor: Color(0xFFFFF8E1),
          buttonBackgroundColor: Color(0xFF6d4c41),
          height: 50,
          items: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/1');
                },
                icon: Icon(Icons.filter_1_rounded, size: 30, color: Colors.black)),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/3');
                },
                icon:
                    Icon(Icons.filter_3_rounded, size: 30, color: Colors.black)),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/3');
                },
               
                icon: Icon(Icons.quiz,
                    size: 30, color: Colors.black)),
                     IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/1');
                },
                icon: Icon(Icons.battery_unknown,
                    size: 30, color: Colors.black)),
                     IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/1');
                },
                icon: Icon(Icons.date_range_rounded,
                    size: 30, color: Colors.black)),
          ],
          animationDuration: Duration(milliseconds: 200),
          index: 0,
        ),
      ), 
      ),
    );
  }
}

class FirstPage extends StatefulWidget{
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  static var listImagesnotFound = [
    "assets/joker.png",
    "assets/king.png",
    "assets/queen.png",];
  static var _random = Random();
  var imageToShow =
      listImagesnotFound[_random.nextInt(listImagesnotFound.length)];

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('ทำนาย')
        ),
       body: Center(
         child: Container(alignment: Alignment.center,
          child: FlipCard(
            direction: FlipDirection.HORIZONTAL,
            front: Container(
              width: 200,
              height: 300,
              child: Image.asset('assets/card_back.png')),
            back: Container(
              width: 200,
              height: 300,
              child: Image.asset(imageToShow.toString()),
            ),
          ),
         ),
       ),
    bottomNavigationBar: SingleChildScrollView(
      child: CurvedNavigationBar(
            color: Color(0xFF6d4c41), 
            backgroundColor: Color(0xFFFFF8E1),
            buttonBackgroundColor: Color(0xFF6d4c41),
            height: 50,
          items: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/1');
                  },
                icon: Icon(Icons.filter_1_rounded, size: 30, color: Colors.black)),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/3');
                  },
                icon: Icon(Icons.filter_3_rounded, size: 30, color: Colors.black)),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/3');
                  },
                icon: Icon(Icons.quiz, size: 30, color: Colors.black)),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/1');
                  },
                icon: Icon(Icons.battery_unknown,
                    size: 30, color: Colors.black)),
               IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/1');
                  },
                icon: Icon(Icons.date_range_rounded, size: 30, color: Colors.black)),
          ],
              animationDuration: Duration(milliseconds: 200),
              index: 0,
      ),
    ),
      floatingActionButton: FloatingActionButton.extended(
       elevation: 2.0,
        icon: const Icon(Icons.refresh),
       label: const Text('ทำนายอีกครั้ง'),
       onPressed: () {
         Navigator.push(context,
         MaterialPageRoute(
           builder: (context) => MyHomePage(title: '',),
           ),
         );
       }
      ), 
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat    
  );
 }
}