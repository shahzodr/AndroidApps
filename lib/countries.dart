import 'package:flutter/material.dart';

class Usa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Shahzod Raufov
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('United States'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RaisedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Back'),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                  'The U.S. is a country of 50 states covering a vast swath of '
                      'North America, with Alaska in the northwest and Hawaii '
                      'extending the nation’s presence into the Pacific Ocean.'),
            ),
          ],
        ),
      ),
    );
  }
}