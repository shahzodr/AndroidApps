import 'package:flutter/material.dart';

class Gcf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GCF Finder',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'GreatestCommonFactor - Shahzod R'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double num1=0.0, num2=0.0; String output='';
  FindGCF fish = FindGCF();
  void _incrementCounter() {
    setState(() {
      output = fish.findgcf(num1, num2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(output, style: TextStyle(fontFamily: 'Courier',
                backgroundColor: Colors.orangeAccent,
                color: Colors.deepPurpleAccent,
                fontSize: 18.0),),
            SizedBox(height: 8.0,),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter a number to get GCF',
                  hintText: 'Numbers only'
              ),
              keyboardType: TextInputType.number,
              onChanged: (text){
                num1 = double.parse(text);
              },
            ),
            SizedBox(height: 8.0,),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter a number to get GCF',
                  hintText: 'Numbers only'
              ),
              keyboardType: TextInputType.number,
              onChanged: (text){
                num2 = double.parse(text);
              },
            ),
            SizedBox(height: 8.0,),
            FlatButton(
              color: Colors.orangeAccent,
              child: Text('Find GCF'),
              onPressed: _incrementCounter,
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class FindGCF{
  double a=0.0, b=0.0, a1=0.0, b1=0.0; String output='Enter numbers to get GCF';
  FindGCF({this.a, this.b});
  String findgcf(a,b){
    a1=a;
    b1=b;
    if(a>0.0 && b>0.0){
      double t=0.0;
      while(b != 0){
        t=a;
        a=b;
        b=t%b;
      }
    }else if (a<0.0 || b<0.0){
      return 'Enter positive numbers only';
    }
    return 'GCF of '+a1.toString()+' and '+b1.toString()+' is '+a.toString();
  }
}
