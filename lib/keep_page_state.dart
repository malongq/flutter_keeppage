import 'package:flutter/material.dart';
import 'new_home_page.dart';

class KeepPageState extends StatefulWidget{
  @override
  _KeepPageStateState createState()=> _KeepPageStateState();
}

class _KeepPageStateState extends State<KeepPageState> with SingleTickerProviderStateMixin{

  TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 3,vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.5),
        title: Text('保持页面状态demo',style: Theme.of(context).textTheme.display1,),
        bottom: TabBar(
          controller: _controller,
          tabs: [
            Icon(Icons.airplanemode_active,color: Colors.lightBlue,size: 25.0,),
            Icon(Icons.directions_bike,color: Colors.lightBlue,size: 25.0,),
            Icon(Icons.cake,color: Colors.lightBlue,size: 25.0,),
          ]
        ),
      ),

      body: TabBarView(
        controller: _controller,
          children: [
            Center(
              child: new NewHomePage(),
            ),
            Center(
              child: new NewHomePage(),
            ),
            Center(
              child: new NewHomePage(),
            )
          ]
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


}