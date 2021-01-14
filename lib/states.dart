import 'package:flutter/material.dart';
import 'countries.dart';

class Texas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Shahzod Raufov
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('State of Texas'),
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
                  'Texas is a state in the South Central Region of the United States. '
                  'It is the second largest U.S. state by both area and population.'),
            ),
            RaisedButton(
                child: Text('United States'),
                color: Colors.lightBlueAccent,
                onPressed: ()=>Navigator.pushNamed(context, '/Usa'),
                //onPressed: () => Navigator.push(
                    //context,
                    //MaterialPageRoute(
                        //builder: (BuildContext context) => Usa()))
            ),
          ],
        ),
      ),
    );
  }
}

class Ny extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Shahzod Raufov
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('State of New York'),
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
                  'New York is a state in the northeastern U.S., known for New York City and towering Niagara Falls. '
                  'NYC’s island of Manhattan is home to the Empire State Building, Times Square and Central Park. '
                  'The Brooklyn Bridge connects Manhattan with the borough of Brooklyn.'),
            ),
            RaisedButton(
                child: Text('United States'),
                color: Colors.lightBlueAccent,
                onPressed: ()=>Navigator.pushNamed(context, '/Usa'),
                //onPressed: () => Navigator.push(
                    //context,
                    //MaterialPageRoute(
                        //builder: (BuildContext context) => Usa()))
            ),
          ],
        ),
      ),
    );
  }
}

class Arizona extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Shahzod Raufov
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('State of Arizona'),
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
              child: Text('Arizona State University is a public metropolitan '
                  'research university on five campuses across the Phoenix metropolitan area, '
                  'and four regional learning centers throughout Arizona. '
                  'ASU is one of the largest public universities by enrollment in the U.S.'),
            ),
            RaisedButton(
                child: Text('United States'),
                color: Colors.lightBlueAccent,
                onPressed: ()=>Navigator.pushNamed(context, '/Usa'),
                //onPressed: () => Navigator.push(
                    //context,
                    //MaterialPageRoute(
                        //builder: (BuildContext context) => Usa()))
            ),
          ],
        ),
      ),
    );
  }
}

class California extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Shahzod Raufov
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('State of California'),
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
              child: Text('California, a western U.S. state, '
                  'stretches from the Mexican border along the Pacific for nearly 900 miles. '
                  'Its terrain includes cliff-lined beaches, redwood forest, '
                  'the Sierra Nevada Mountains, Central Valley farmland and the Mojave Desert. '
                  'The city of Los Angeles is the seat of the Hollywood entertainment industry. '
                  'Hilly San Francisco is known for the Golden Gate Bridge, '
                  'Alcatraz Island and cable cars.'),
            ),
            RaisedButton(
                child: Text('United States'),
                color: Colors.lightBlueAccent,
                onPressed: ()=>Navigator.pushNamed(context, '/Usa'),
                //onPressed: () => Navigator.push(
                    //context,
                    //MaterialPageRoute(
                        //builder: (BuildContext context) => Usa()))
            ),
          ],
        ),
      ),
    );
  }
}

class Alabama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Shahzod Raufov
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('State of Alabama'),
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
              child: Text('Alabama is a southeastern U.S. state that’s home to '
                  'significant landmarks from the American Civil Rights Movement. '
                  'The city of Birmingham\'s 16th Street Baptist Church, '
                  'now a museum, was a protest headquarters in the 1960s. '
                  'Martin Luther King, Jr.\'s church and the Rosa Parks Museum, dedicated to the activist, '
                  'can be found in the capital of Montgomery.'),
            ),
            RaisedButton(
                child: Text('United States'),
                color: Colors.lightBlueAccent,
                onPressed: ()=>Navigator.pushNamed(context, '/Usa'),
                //onPressed: () => Navigator.push(
                    //context,
                    //MaterialPageRoute(
                        //builder: (BuildContext context) => Usa()))
            ),
          ],
        ),
      ),
    );
  }
}

class Illinois extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Shahzod Raufov
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('State of Illinois'),
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
              child: Text('Illinois is a midwestern state bordering Indiana in '
                  'the east and the Mississippi River in the west. '
                  'Nicknamed "the Prairie State," it\'s marked by farmland,'
                  ' forests, rolling hills and wetlands. Chicago, one of the largest '
                  'cities in the U.S, is in the northeast on the shores of Lake Michigan.'),
            ),
            RaisedButton(
                child: Text('United States'),
                color: Colors.lightBlueAccent,
                onPressed: ()=>Navigator.pushNamed(context, '/Usa'),
                //onPressed: () => Navigator.push(
                    //context,
                    //MaterialPageRoute(
                        //builder: (BuildContext context) => Usa()))
            ),
          ],
        ),
      ),
    );
  }
}

class Washington extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Shahzod Raufov
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('State of Washinton'),
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
              child: Text('Washington, officially the State of Washington, '
                  'is a state in the Pacific Northwest region of the United States.'),
            ),
            RaisedButton(
                child: Text('United States'),
                color: Colors.lightBlueAccent,
                onPressed: ()=>Navigator.pushNamed(context, '/Usa'),
                //onPressed: () => Navigator.push(
                    //context,
                    //MaterialPageRoute(
                        //builder: (BuildContext context) => Usa()))
            ),
          ],
        ),
      ),
    );
  }
}

class Nj extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Shahzod Raufov
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('State of New Jersey'),
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
                  'New Jersey is a northeastern U.S. state with some 130 miles of '
                  'Atlantic coast. Jersey City, across the Hudson River from Lower '
                  'Manhattan, is the site of Liberty State Park, where ferries embark '
                  'for nearby Ellis Island, with its historic Immigration Museum, and '
                  'the iconic Statue of Liberty.'),
            ),
            RaisedButton(
                child: Text('United States'),
                color: Colors.lightBlueAccent,
                onPressed: ()=>Navigator.pushNamed(context, '/Usa'),
                //onPressed: () => Navigator.push(
                    //context,
                    //MaterialPageRoute(
                        //builder: (BuildContext context) => Usa()))
            ),
          ],
        ),
      ),
    );
  }
}

class Ohio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Shahzod Raufov
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('State of Ohio'),
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
              child: Text('Ohio is a state in the East North Central region of '
                  'the Midwestern United States. Of the fifty states, it is the 34th '
                  'largest by area, the seventh most populous, and the tenth most '
                  'densely populated.'),
            ),
            RaisedButton(
                child: Text('United States'),
                color: Colors.lightBlueAccent,
                onPressed: ()=>Navigator.pushNamed(context, '/Usa'),
                //onPressed: () => Navigator.push(
                    //context,
                    //MaterialPageRoute(
                        //builder: (BuildContext context) => Usa()))
            ),
          ],
        ),
      ),
    );
  }
}

class Florida extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Shahzod Raufov
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('State of Florida'),
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
              child: Text('Florida is the south eastern most U.S. state, '
                  'with the Atlantic on one side and the Gulf of Mexico on the '
                  'other. It has hundreds of miles of beaches. The city of Miami '
                  'is known for its Latin-American cultural influences and notable '
                  'arts scene, as well as its nightlife, especially in upscale '
                  'South Beach. Orlando is famed for theme parks, including Walt '
                  'Disney World.'),
            ),
            RaisedButton(
                child: Text('United States'),
                color: Colors.lightBlueAccent,
                onPressed: ()=>Navigator.pushNamed(context, '/Usa'),
                //onPressed: () => Navigator.push(
                    //context,
                    //MaterialPageRoute(
                        //builder: (BuildContext context) => Usa()))
            ),
          ],
        ),
      ),
    );
  }
}
