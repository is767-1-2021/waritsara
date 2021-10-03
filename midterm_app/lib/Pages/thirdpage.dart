import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
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
                    Navigator.pushNamed(context, '/4');
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
                    Navigator.pushNamed(context, '/4');
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
                    Navigator.pushNamed(context, '/4');
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
                    Navigator.pushNamed(context, '/4');
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
                    Navigator.pushNamed(context, '/4');
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
                    Navigator.pushNamed(context, '/4');
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
                    Navigator.pushNamed(context, '/4');
                      },
                        child: Image(
                          image:  AssetImage('assets/card_back.png'),
                          fit: BoxFit.cover,
                          width: 200.0,
                          height: 300.0,),
                        ),
                ),]
              ),
            ), 
          ],
         ),
       ),
        floatingActionButton: FloatingActionButton.extended(
         elevation: 2.0,
         label: const Text('กดปุ่มหรือกดที่ไพ่เพื่อทำนาย'),
         onPressed: () {
          Navigator.pushNamed(context, '/4');
           }),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat    
      ),
    );
  }
}