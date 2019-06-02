/**
 * Exemplo de aplicação desenvolvida usando Flutter
 * Autor: Antonio Ricardo Alexandre Brasil
 */

import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  // Private variable uses _ before the name

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        // App Bar
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.select_all,
                size: 35,
                color: Colors.green[600],
              ),
              onPressed: () {
                print("Hello world");
              },
            ),
            Spacer(),
            Container(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(                     
                      "    Meu saldo",
                      style: TextStyle(
                          fontSize: 11,
                          color: Colors.black,                          
                          fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "R\$ 120,00",
                      style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w800),
                    ),
                  ],
                )),
            Spacer(),
            IconButton(
              icon: Icon(Icons.person_add, color: Colors.green[600], size: 35,),
              onPressed: () {
                print("Hello world");
              },
            )
          ],
        ),

        // Body
        body: RecentPayments(),

        // Bottom
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          padding: EdgeInsets.only(top: 30),
          height: 75,
          width: 75,
          child: new FloatingActionButton(
            backgroundColor: Color.fromARGB(200, 44, 203, 109),
            child: Column(
              children: <Widget>[
                Icon(Icons.attach_money, size: 23),
                Text(
                  "Pagar",
                  style: TextStyle(
                    fontSize: 8,
                  ),
                )
              ],
            ),
            onPressed: () {},
          ),
        ),

        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 55.0,
            padding: EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 70,
                  child: FlatButton(
                      onPressed: () {
                        print("Hello world 1");
                      },
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.home,
                            size: 30,
                            color: Colors.black,
                          ),
                          Text(
                            "Início",
                            style: TextStyle(fontSize: 8),
                          )
                        ],
                      )),
                ),
                Container(
                  width: 70,
                  child: FlatButton(
                      onPressed: () {
                        print("Hello world 1");
                      },
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.account_balance_wallet,
                            size: 30,
                            color: Colors.grey[500],
                          ),
                          Text(
                            "Carteira",
                            style: TextStyle(fontSize: 8),
                          )
                        ],
                      )),
                ),
                Container(
                  width: 75,
                ),
                Container(
                  width: 80,
                  child: FlatButton(
                      onPressed: () {
                        print("Hello world 1");
                      },
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.notifications_none,
                              size: 30, color: Colors.grey[500]),
                          Text(
                            "Notificações",
                            style: TextStyle(fontSize: 8),
                          )
                        ],
                      )),
                ),
                Container(
                  width: 60,
                  child: FlatButton(
                      onPressed: () {
                        print("Hello world 1");
                      },
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.person_outline,
                            size: 30,
                            color: Colors.grey[500],
                          ),
                          Text(
                            "Ajustes",
                            style: TextStyle(fontSize: 8),
                          )
                        ],
                      )),
                ),
              ],
            ),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class RecentPayments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 241, 241, 241),
      child: Column(        
        children: <Widget>[          
          Container(
            height: 120,
            color: Color.fromARGB(255, 25, 203, 120),
            width: MediaQuery.of(context).size.width,
            child: Container(
              margin: EdgeInsets.only(top: 10, left: 15) ,
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text("Sugestões para você", style: TextStyle( fontWeight: FontWeight.w800, fontSize: 14, color: Colors.white, ),),
                  ),
                  Row(                    
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                              width: 60.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 2, color: Colors.white),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage( "https://i1.rgstatic.net/ii/profile.image/756055793483776-1557269156030_Q128/Antonio_Ricardo_Brasil.jpg",),)
                          ),),
                          Text("@brasil", style: TextStyle(color: Colors.white),),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: <Widget>[
                          Container(
                              width: 60.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 2, color: Colors.white),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage( "https://www.picpay.com/static/images/new/home/ppay-icon.png",),)
                          ),),
                          Text("@thiago.s", style: TextStyle(color: Colors.white),),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: <Widget>[
                          Container(
                              width: 60.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 2, color: Colors.white),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage( "https://www.picpay.com/static/images/new/home/ppay-icon.png",),)
                          ),),
                          Text("@heymarina", style: TextStyle(color: Colors.white),),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: <Widget>[
                          Container(
                              width: 60.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 2, color: Colors.white),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage( "https://www.picpay.com/static/images/new/home/ppay-icon.png",),)
                          ),),
                          Text("Cielo", style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10) ,
            child: Container(               
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              width: MediaQuery.of(context).size.width,
              height: 30,
              child: Row(
                children: <Widget>[
                  Text("Atividades", style: TextStyle(fontWeight: FontWeight.w800,),),
                  Spacer(),
                  Container(
                    width: 60,
                    child: Text( "Todas", style: TextStyle(fontSize: 14, 
                                          color: Color.fromARGB(255, 44, 207, 131),
                                          fontWeight: FontWeight.w800),),
                  ),
                  Container(
                    width: 50,
                    child: Text( "Minhas", style: TextStyle(
                                                    fontSize: 14,
                                                    color: Color.fromARGB(255, 146, 148, 156),
                                                    fontWeight: FontWeight.w800)),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(7.0),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(16.0),
                  color: Colors.white,
                  height: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                              width: 45.0,
                              height: 45.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage( "https://i1.rgstatic.net/ii/profile.image/756055793483776-1557269156030_Q128/Antonio_Ricardo_Brasil.jpg",),)
                          ),),
                          Text(" @brasil", style: TextStyle(fontWeight: FontWeight.w800),),
                          Text(" pagou "),
                          Text("Você", style: TextStyle(fontWeight: FontWeight.w800),),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: <Widget>[
                          Text("Sorvete de ontem a noite! 🍦😜"),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: <Widget>[
                          Text("R\$ 10,00", style: TextStyle(color: Color.fromARGB(255, 44, 207, 131), fontWeight: FontWeight.w800),),
                          Text(" | "),
                          Icon(Icons.people_outline, color: Colors.grey, size: 20,),
                          Text(" 4 minutos", style: TextStyle(color: Colors.grey),),
                          Spacer(),
                          Icon(Icons.chat_bubble_outline),
                          Text("   3   "),
                          Icon(Icons.favorite, color: Color.fromARGB(255, 44, 207, 131),),
                          Text("   5   "),
                        ],
                      ), 
                    ],
                  ),
                ),
                new Divider()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
