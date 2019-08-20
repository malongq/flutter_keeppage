//import 'package:flutter/material.dart';
//import 'homepage.dart';
//
//void main()=>runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: '保持页面状态1',
//      theme: ThemeData(
//        primarySwatch: Colors.lightBlue,
//      ),
//      home: KeepPage(),
//    );
//  }
//}
//
//class KeepPage extends StatefulWidget{
//  @override
//  _KeepPageState createState()=> _KeepPageState();
//}
//
//class _KeepPageState extends State<KeepPage> with SingleTickerProviderStateMixin{
//
//  TabController _controller;
//
//  @override
//  void initState() {
//    _controller = TabController(length: 3, vsync: this);
//    super.initState();
//  }
//
//  @override
//  void dispose() {
//    _controller.dispose();
//    super.dispose();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Scaffold(
//
//      appBar: AppBar(
//
//        title: Text(
//          '保持页面状态1',
//          style: TextStyle(
//            fontSize: 22.0,
//            color: Colors.white
//          ),
//        ),
//
//        bottom: TabBar(
//          controller: _controller,
//          tabs: <Widget>[
//            Tab(icon: Icon(Icons.directions_bike,color: Colors.deepOrange,size: 30.0)),
//            Tab(icon: Icon(Icons.directions_transit,color: Colors.black,size: 30.0)),
//            Tab(icon: Icon(Icons.airplanemode_active,color: Colors.amber,size: 30.0)),
//          ],
//        ),
//
//      ),
//
//
//      body: TabBarView(
//          controller: _controller,
//          children: [
//            Center(
////              child: Text('自行车',style: TextStyle(fontSize: 46.0,color: Colors.deepOrange)),
//                child: HomePage(),
//            ),
//            Center(
//              child: HomePage(),
////              child: Text('火车',style: TextStyle(fontSize: 46.0,color: Colors.black)),
//            ),
//            Center(
//              child: HomePage(),
////              child: Text('飞机',style: TextStyle(fontSize: 46.0,color: Colors.amber)),
//            )
//          ],
//        ),
//
//    );
//  }
//}


//import 'package:flutter/material.dart';
//import 'homepage.dart';
//
//void main()=>runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: '保持页面状态demo',
//      theme: ThemeData(
//        primarySwatch: Colors.lightBlue,
//      ),
//      home: KeepPage(),
//    );
//  }
//
//}
//
//class KeepPage extends StatefulWidget {
//
//  @override
//  _KeepPageState createState()=> _KeepPageState();
//
//}
//
//class _KeepPageState extends State<KeepPage> with SingleTickerProviderStateMixin{
//
//  TabController _controller;
//
//  @override
//  void initState() {
//    _controller = TabController(length: 3, vsync: this);
//    super.initState();
//  }
//
//  @override
//  void dispose() {
//    _controller.dispose();
//    super.dispose();
//  }
//
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Scaffold(
//        appBar: AppBar(
//          title: Text(
//            '保持页面状态demo',
//            style: TextStyle(
//              fontSize: 25.0,
//              color: Colors.black
//            ),
//          ),
//
//          bottom: TabBar(
//              controller: _controller,
//              tabs: [
//                Tab(icon: Icon(Icons.directions_bike,color: Colors.deepOrange,size: 30.0)),
//                Tab(icon: Icon(Icons.directions_transit,color: Colors.black,size: 30.0)),
//                Tab(icon: Icon(Icons.airplanemode_active,color: Colors.amber,size: 30.0)),
//              ]
//          ),
//
//        ),
//
//      body: TabBarView(
//        controller: _controller,
//          children: [
//            Center(child: HomePage()),
//            Center(child: HomePage()),
//            Center(child: HomePage()),
//          ]
//      ),
//
//    );
//  }
//}


//TODO 再次练习 保持页面状态demo
import 'package:flutter/material.dart';
import 'keep_page_state.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '保持页面状态demo',
      theme: ThemeData.light(),
      home: KeepPageState(),
    );
  }
}