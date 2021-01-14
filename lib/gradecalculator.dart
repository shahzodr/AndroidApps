import 'package:flutter/material.dart';

class GradeCalculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
      home: MyHomePage(title: 'Grade Calculator - Shahzod R'),
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
  String t1, t2, result = 'Let\'s Go!';
  double n2;
  GradeCalculate mygrade = GradeCalculate();

  void _incrementCounter() {
    setState(() {
      //print(mygrade.getLetter('Alex', 95.0));
      result = mygrade.getLetter(t1, n2);
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
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
            Container(decoration: BoxDecoration(border: Border.all(),
                color: Colors.yellowAccent),
                padding: EdgeInsets.all(18.0),
                child: Text(result,
                  style: TextStyle(backgroundColor: Colors.yellowAccent,
                      fontFamily: 'Courier', fontSize: 16),)),
            SizedBox(height: 12,),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Enter your name',
                border: OutlineInputBorder(),
                //hintText: ''
              ),
              onChanged: (text){
                t1 = text;
              },
            ),
            SizedBox(height: 8.0,),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter a number grade',
                border: OutlineInputBorder(),
                //hintText: ''
              ),
              onChanged: (text){
                t2 = text;
                n2 = double.parse(t2);
              },
            ),
            FlatButton(onPressed: _incrementCounter,
              child: Container(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Calculate Grade'),
              ),
                decoration: BoxDecoration(color: Colors.yellowAccent, border: Border.all()),
              ),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class GradeCalculate{
  double grade = 0.0;
  String gradeLetter= '';
  String name = '';
  GradeCalculate({this.name, this.grade});
  String getLetter(name, grade){
    if (grade > 100.0 || grade < 0.0) {
      gradeLetter = 'Enter number between 1-100';
      return gradeLetter;
    }
    else if (grade <= 100.0 && grade >= 90.0)
      gradeLetter = 'A';
    else if (grade >= 80.0)
      gradeLetter = 'B';
    else if (grade >= 70.0)
      gradeLetter = 'C';
    else if (grade >= 60.0)
      gradeLetter = 'D';
    else if (grade >= 0 && grade < 60.0)
      gradeLetter = 'F';

    return name + ' received ' + gradeLetter + ' grade.';
  }
}