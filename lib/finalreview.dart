import 'package:flutter/material.dart';

class FinalReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Final Review',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Final Review - Shahzod'),
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
  double n1=0.0, spacing=12.0; String output='';
  Converter fish = Converter();
  void _incrementCounter() {
    setState(() {
      output=fish.toFahrenheit(n1);
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
            Text(output,
              style: TextStyle(
                  backgroundColor: Colors.black12,
                  color:Colors.deepOrangeAccent,
                  fontSize: 20.0,
                  fontFamily: 'oreo'),
            ),
            SizedBox(height: spacing,),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Kelvin temperature',
                  labelText: 'Enter numbers only'
              ),
              onChanged: (text){
                n1=double.parse(text);
              },
            ),
            SizedBox(height: spacing,),
            FlatButton(
              child: Text('Convert to Fahrenheit'),
              color: Colors.deepOrangeAccent,
              onPressed: _incrementCounter,
            )
          ],
        ),
      ),
    );
  }
}

class Converter{
  double n1=0.0, fahrenheit=0.0; String output='';
  Converter({this.n1});
  String toFahrenheit(n1){
    fahrenheit=((n1-273.15)*9/5+32).roundToDouble();
    //fahrenheit=(9.0/5)*(n1-273.15)+32;
    if (fahrenheit<2800.0) output='Iron is solid, ';
    else if(fahrenheit>=2800.0 && fahrenheit<5184.0) output='Iron is melting, ';
    else if(fahrenheit>5184.0) output='Iron is boiling, ';
    output=output+'Fahrenheit= '+fahrenheit.toString();
    return output;
  }
}