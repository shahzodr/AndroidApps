import 'package:flutter/material.dart';

class LabLayout0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lab Layout 0 - Shahzod R'),
        ),
        //Shahzod Raufov
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(color: Colors.blueGrey,
                  child: Text('flex:1'),)
            ),
            Expanded(
                flex: 2,
                child: Container(color: Colors.lightBlueAccent,
                  child: Text('flex:2'),)
            ),
            Expanded(
                flex: 3,
                child: Container(color: Colors.orangeAccent,
                  child: Text('flex:3'),)
            ),
          ],
        )
    );
  }
}
