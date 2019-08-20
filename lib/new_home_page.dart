import 'package:flutter/material.dart';

class NewHomePage extends StatefulWidget {
  @override
  _NewHomePageState createState() => _NewHomePageState();
}

class _NewHomePageState extends State<NewHomePage> with AutomaticKeepAliveClientMixin{

  int _count = 0;

  void _changeCount(){
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text('这是一个神奇的算法，试试 ？',style: Theme.of(context).textTheme.title,),
          ),
          Text('$_count',style: Theme.of(context).textTheme.title,),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeCount,
        child: Icon(Icons.add,color: Colors.lightBlue,),
        backgroundColor: Colors.red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
