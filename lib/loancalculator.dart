import 'package:flutter/material.dart';

class LoanCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loan Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Loan Calculator - Shahzod R'),
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
  double amount=0.0, weekly=0.0; String output='';
  Calculate fish = new Calculate();
  void _incrementCounter() {
    setState(() {
      print('amount='+amount.toString()+', weekly='+weekly.toString());
    });
    output=fish.calculate(amount, weekly);
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
            Text(output),
            SizedBox(height: 8.0,),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter the loan amount',
                  hintText: 'Enter only numbers'
              ),
              onChanged: (text){
                amount=double.parse(text);
              },
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 8.0,),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter weekly pay amount',
                  hintText: 'Enter only numbers'
              ),
              onChanged: (text){
                weekly=double.parse(text);
              },
              keyboardType: TextInputType.number,
            ),
            RaisedButton(
              child: Text('Calculate Loan'),
              onPressed: _incrementCounter,
            )
          ],
        ),
      ),
    );
  }
}

class Calculate{
  double amount=0.0, weekly=0.0; String output = ''; int count=0;
  Calculate({this.amount, this.weekly});
  String calculate(amount,weekly){
    if (amount>0.0 && weekly>0.0){
      output='';
      output='Loan amount: '+amount.toString()+'\n';
      while (amount>0){
        if(amount>=weekly){
          amount=amount-weekly;
          count=count+1;
          output= output+'Week: '+count.toString()+', Balance= \$'+amount.toString()+'\n';
        }else if(amount<weekly){
          output= output+'Week: '+count.toString()+', Balance= \$0'+'\n';
          output=output+'It would take '+count.toString()+' weeks to pay off the loan';
          amount = -1;
        }
      }
    }else if(amount<0 || weekly<0)
      output='Please enter positive values';
    else
      output='Please enter numbers only';
    return output;
  }

}