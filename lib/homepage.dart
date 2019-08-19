//import 'package:flutter/material.dart';
//
//class HomePage extends StatefulWidget{
//  @override
//  _HomePageState createState()=> _HomePageState();
//}
//
//class _HomePageState extends State<HomePage> with AutomaticKeepAliveClientMixin{
//
//  int _add = 0;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text('点击一次加 1',style: TextStyle(fontSize: 46.0,color: Colors.deepOrange)),
//            Text(
//              '$_add',style: Theme.of(context).textTheme.display4,
//            )
//          ],
//        ),
//      ),
//
//      floatingActionButton: FloatingActionButton(
//        onPressed: _refreshCount,
//        tooltip: '小提示',
//        child: Icon(Icons.add,color: Colors.black,),
//      ),
//      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//
//    );
//  }
//
//  void _refreshCount(){
//    setState(() {
//      _add++;
//    });
//  }
//
//  @override
//  bool get wantKeepAlive => true;//with AutomaticKeepAliveClientMixin这个类后，要重写这个方法，返回true表示保持页面状态，false表示不保持
//}

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AutomaticKeepAliveClientMixin{

  int _control = 0;

  void _re(){
    setState(() {
      _control++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('点一下就 + 1，就是这么神奇'),
            Text('$_control',style: Theme.of(context).textTheme.display4,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _re,child: Icon(Icons.add),tooltip: '点点试试啊',),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

}
