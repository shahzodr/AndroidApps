import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blueGrey,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'iOS Calculator - Shahzod R'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String output='';
  String t1='';
  String t2='';
  double n1 = 8.0, n2 = 2.0;

  Calculate calc = Calculate(num1: 8.0, num2: 2.0);

  void _incrementCounter() {

    setState(() {
      output=('\nSummation is ' + calc.sum(n1, n2).toString()
          + '\nSubtraction is ' + calc.subtract(n1, n2).toString()
          + '\nMultiplication is ' + calc.multiply(n1, n2).toString()
          + '\nDivision is ' + calc.divide(n1, n2).toString()
          + '\nAverage is ' + calc.average(n1, n2).toString());

      //print(output);

      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  labelText: 'Enter the first number',
                  border: OutlineInputBorder(),
                  hintText: 'Input'
              ),
              onChanged: (text){
                t1 = text;
                n1 = double.parse(t1);
              },
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Enter the second number',
                  border: OutlineInputBorder(),
                  hintText: 'Input'
              ),
              onChanged: (text){
                t2 = text;
                n2 = double.parse(t2);
              },
            ),
            Text(output),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Calculate {
  double num1, num2, result = 0.0;
  Calculate({this.num1,this.num2});
  double sum(double num1, double num2){
    result = num1 + num2;
    return result;
  }
  double subtract(double num1, double num2){
    result = num1 - num2;
    return result;
  }
  double multiply(double num1, double num2){
    result = num1 * num2;
    return result;
  }
  double divide(double num1, double num2){
    result = num1 / num2;
    return result;
  }
  double average(double num1, double num2){
    result = (num1 + num2)/2;
    return result;
  }
}