import 'package:flutter/material.dart';

class Test1Review extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Test 1 Review - Shahzod R'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
          child: Row(
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      color: Colors.lightGreen,
                      child: Text('Shahzod Raufov', style: TextStyle(fontSize: 8),),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      color: Colors.brown,
                      child: Text('Shahzod Raufov', style: TextStyle(fontSize: 8),),
                    )
                  ]
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      color: Colors.lime,
                      child: Text('Shahzod Raufov', style: TextStyle(fontSize: 8),),
                    ),
                    SizedBox(
                      height: 80,
                      width: 40,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      color: Colors.lightBlue,
                      child: Text('Shahzod Raufov', style: TextStyle(fontSize: 8),),
                    ),
                  ]
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      color: Colors.pinkAccent,
                      child: Text('Shahzod Raufov', style: TextStyle(fontSize: 8),),
                    ),
                    SizedBox(
                      height: 160,
                      width: 40,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      color: Colors.green,
                      child: Text('Shahzod Raufov', style: TextStyle(fontSize: 8),),
                    ),
                  ]
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      color: Colors.red,
                      child: Text('Shahzod Raufov', style: TextStyle(fontSize: 8),),
                    ),
                    SizedBox(
                      height: 240,
                      width: 40,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      color: Colors.blue,
                      child: Text('Shahzod Raufov', style: TextStyle(fontSize: 8),),
                    ),
                  ]
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      color: Colors.brown,
                      child: Text('Shahzod Raufov', style: TextStyle(fontSize: 8),),
                    ),
                    SizedBox(
                      height: 320,
                      width: 40,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      color: Colors.purple,
                      child: Text('Shahzod Raufov', style: TextStyle(fontSize: 8),),
                    ),
                  ]
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      color: Colors.blueGrey,
                      child: Text('Shahzod Raufov', style: TextStyle(fontSize: 8),),
                    ),
                    SizedBox(
                      height: 400,
                      width: 40,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      color: Colors.amberAccent,
                      child: Text('Shahzod Raufov', style: TextStyle(fontSize: 8),),
                    ),
                  ]
              )
            ],
          )
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
