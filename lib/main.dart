import 'package:flutter/material.dart';
import 'colleges.dart';
import 'cities.dart';
import 'states.dart';
import 'countries.dart';
import 'ioscolleges.dart';
import 'businesscard.dart';
import 'test1review.dart';
import 'customclass.dart';
import 'lablayout0.dart';
import 'calculator.dart';
import 'tipcalculator.dart';
import 'gradecalculator.dart';
import 'celsiustokelvin.dart';
import 'guess_game.dart';
import 'picturegallery.dart';
import 'loancalculator.dart';
import 'gcf.dart';
import 'finalreview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apps - Shahzod R',
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
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(title: 'Apps - Shahzod R'),

        //colleges
        //column 1
        '/Asu': (context) => Asu(),
        '/Cuny': (context) => Cuny(),
        '/Uat': (context) => Uat(),
        '/Auhs': (context) => Auhs(),
        '/Nyu': (context) => Nyu(),

        //column 2
        '/Aamu': (context) => Aamu(),
        '/Ua': (context) => Ua(),
        '/Apu': (context) => Apu(),
        '/Aiu': (context) => Aiu(),
        '/Wsu': (context) => Wsu(),

        //column 3
        '/Aum': (context) => Aum(),
        '/Ac': (context) => Ac(),
        '/Ou': (context) => Ou(),
        '/Uf': (context) => Uf(),
        '/Suny': (context) => Suny(),

        //cities
        '/Phoenix': (context) => Phoenix(),
        '/Nyc': (context) => Nyc(),
        '/Tempe': (context) => Tempe(),
        '/SHill': (context) => SHill(),
        '/Huntsville': (context) => Huntsville(),
        '/Tuscaloosa': (context) => Tuscaloosa(),
        '/Azusa': (context) => Azusa(),
        '/Schaumburg': (context) => Schaumburg(),
        '/Pullman': (context) => Pullman(),
        '/Montgomery': (context) => Montgomery(),
        '/Amarillo': (context) => Amarillo(),
        '/Athens': (context) => Athens(),
        '/Gainesville': (context) => Gainesville(),

        //states
        '/Texas': (context) => Texas(),
        '/Ny': (context) => Ny(),
        '/Arizona': (context) => Arizona(),
        '/California': (context) => California(),
        '/Alabama': (context) => Alabama(),
        '/Illinois': (context) => Illinois(),
        '/Washington': (context) => Washington(),
        '/Nj': (context) => Nj(),
        '/Ohio': (context) => Ohio(),
        '/Florida': (context) => Florida(),

        //countries
        '/Usa': (context) => Usa(),

        //iOSApps
        '/IosColleges': (context) => IosColleges(),
        '/BusinessCard': (context) => BusinessCard(),
        '/Test1Review': (context) => Test1Review(),
        '/CustomClass': (context) => CustomClass(),
        '/LabLayout0': (context) => LabLayout0(),
        '/Calculator': (context) => Calculator(),
        '/TipCalculator': (context) => TipCalculator(),
        '/GradeCalculator': (context) => GradeCalculator(),
        '/CelsiusToKelvin': (context) => CelsiusToKelvin(),
        '/GuessGame': (context) => GuessGame(),
        '/PictureGallery': (context) => PictureGallery(),
        '/LoanCalculator': (context) => LoanCalculator(),
        '/Gcf': (context) => Gcf(),
        '/FinalReview': (context) => FinalReview()
      },
      //home: MyHomePage(title: 'Colleges Push Named - Shahzod R'),
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

  void _incrementCounter() {
    setState(() {
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column( //Shahzod Raufov
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CollegeButtons(collegeName: 'Colleges', college: '/IosColleges', color1: const Color(0xFFF2F2F2),
                    color2: const Color(0xFF0000FF)),
                CollegeButtons(collegeName: 'Business Card', college: '/BusinessCard',color1: const Color(0xFF1D3A83),
                    color2: const Color(0xFFFFFFFF)),
                CollegeButtons(collegeName: 'Test 1 Review', college: '/Test1Review', color1: const Color(0xFFF2F2F2),
                    color2: const Color(0xFF0000FF)),
                CollegeButtons(collegeName: 'Custom Class', college: '/CustomClass', color1: const Color(0xFF1D3A83),
                    color2: const Color(0xFFFFFFFF)),
                CollegeButtons(collegeName: 'Lab Layout 0', college: '/LabLayout0', color1: const Color(0xFFF2F2F2),
                    color2: const Color(0xFF0000FF)),
                CollegeButtons(collegeName: 'Calculator', college: '/Calculator', color1: const Color(0xFF1D3A83),
                    color2: const Color(0xFFFFFFFF)),
                CollegeButtons(collegeName: 'Final Review', college: '/FinalReview', color1: const Color(0xFFF2F2F2),
                    color2: const Color(0xFF0000FF)),
              ], //Shahzod R
            ),
            Column( //Shahzod Raufov
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CollegeButtons(collegeName: 'Tip Calculator', college: '/TipCalculator', color1: const Color(0xFF1D3A83),
                    color2: const Color(0xFFFFFFFF)),
                CollegeButtons(collegeName: 'Grade Calculator', college: '/GradeCalculator', color1: const Color(0xFFF2F2F2),
                    color2: const Color(0xFF0000FF)),
                CollegeButtons(collegeName: 'Celsius To Kelvin', college: '/CelsiusToKelvin', color1: const Color(0xFF1D3A83),
                    color2: const Color(0xFFFFFFFF)),
                CollegeButtons(collegeName: 'Guess Game', college: '/GuessGame', color1: const Color(0xFFF2F2F2),
                    color2: const Color(0xFF0000FF)),
                CollegeButtons(collegeName: 'Picture Gallery', college: '/PictureGallery', color1: const Color(0xFF1D3A83),
                    color2: const Color(0xFFFFFFFF)),
                CollegeButtons(collegeName: 'Loan Calculator', college: '/LoanCalculator', color1: const Color(0xFFF2F2F2),
                    color2: const Color(0xFF0000FF)),
                CollegeButtons(collegeName: 'GCF', college: '/Gcf', color1: const Color(0xFF1D3A83),
                    color2: const Color(0xFFFFFFFF)),
              ], //Shahzod R
            ),
          ],
        ),
      ),
    );
  }
}//Shahzod Raufov

class CollegeButtons extends StatelessWidget {
  final String collegeName;
  final String college;
  final Color color1;
  final Color color2;

  CollegeButtons({this.collegeName, this.college, this.color1, this.color2});
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: color1,
      child: Text(collegeName,
        style: TextStyle(color: color2),),
      onPressed: () => Navigator.pushNamed(context, college)
      //onPressed: ()=> Navigator.push(context,
          //MaterialPageRoute(builder: (BuildContext context)=>college)),
    );
  }
}//Shahzod Raufov