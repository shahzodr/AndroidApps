import 'package:flutter/material.dart';
import 'states.dart';
import 'dart:math';

class Phoenix extends StatelessWidget {
  final ChaseField = new LandMarks(
    title: 'ChaseField',
    description: 'The home of the state\'s Major League Baseball team, the Arizona Diamondbacks.',
    image: 'https://media-cdn.tripadvisor.com/media/photo-w/0b/1f/f1/b8/20160429-182518-largejpg.jpg'
  );
  final OrpheumTheater = new LandMarks(
    title: 'Orpheum Theater',
    description: 'The Orpheum Theatre is a 1364-seat theatre in downtown Phoenix. This venue was originally used for vaudeville acts as part of the nationwide Orpheum Circuit.',
    image: 'https://media-cdn.tripadvisor.com/media/photo-o/16/77/c3/41/20190212-140451-largejpg.jpg'
  );
  final PCCV = new LandMarks(
      title: 'Phoenix Convention Center & Venues',
      description: 'The Phoenix Convention Center is an events venue in Phoenix, Arizona. It opened in 1972 and hosts national and regional conventions and trade shows as well as consumer events and theatrical productions.',
      image: 'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/25/01/61/phoenix-convention-center.jpg'
  );
  final List<LandMarks> phoenixLandmarks=[];
  bool winter = true;
  final distanceTravel = Distance(originx: 40.70, originy: -73.99, destinationx: 33.44, destinationy: 112.07);
  String result = '';
  @override
  Widget build(BuildContext context) {
    if (winter == true) {
      phoenixLandmarks.add(ChaseField);
      phoenixLandmarks.add(OrpheumTheater);
      phoenixLandmarks.add(PCCV);
      winter = false;
    }//Shahzod R
    result = 'The distance is : '+distanceTravel.calc(originx: 40.70, originy: -73.99,
        destinationx: 33.44, destinationy: 112.07).round().toString();
    return MaterialApp(
      //Shahzod Raufov
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('City of Phoenix'),
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
                  'Phoenix is the capital of the southwestern U.S. state of Arizona. '
                  'Known for its year-round sun and warm temperatures, it anchors a sprawling, '
                  'multicity metropolitan area known as the Valley of the Sun.'),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(22.0),
                itemCount: phoenixLandmarks.length,
                itemBuilder: (BuildContext ctxt, final int index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(phoenixLandmarks[index].image),
                    ),
                    title: Text(phoenixLandmarks[index].title),
                    subtitle: Text(phoenixLandmarks[index].description),
                  );
                },
              ),
            ),
            RaisedButton(
                child: Text('State of Texas'),
                color: Colors.lightBlueAccent,
                onPressed: ()=>Navigator.pushNamed(context, '/Texas'),
                //onPressed: () => Navigator.push(
                   //context, //Shahzod Raufov
                    //MaterialPageRoute(
                        //builder: (BuildContext context) => Texas()))
            ),
            Text(result), //Adding the distance result to bottom of the screen //Shahzod R
          ],
        ),
      ),
    );
  }
}

class Nyc extends StatelessWidget {
  final EmpireState = new LandMarks(
      title: 'Empire State Building',
      description: 'No visit to New York is complete without experiencing bird\'s-eye city views.',
      image: 'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/0b/26/af/f7.jpg'
  );
  final CentralPark = new LandMarks(
      title: 'Central Park',
      description: 'Central Park is an urban park in New York City located between the Upper West and Upper East Sides of Manhattan.',
      image: 'https://media-cdn.tripadvisor.com/media/photo-o/03/5c/91/73/central-park.jpg'
  );
  final StatueOfLiberty = new LandMarks(
      title: 'Statue of Liberty National Monument',
      description: 'No visit to New York is complete without experiencing bird\'s-eye city views.',
      image: 'https://media-cdn.tripadvisor.com/media/photo-p/04/ba/d3/e8/statue-of-liberty_rotated_90.jpg'
  );
  final List<LandMarks> nycLandmarks=[];
  bool winter = true;
  final distanceTravel = Distance(originx: 40.70, originy: -73.99, destinationx: 40.71, destinationy: 74);
  String result = '';
  @override
  Widget build(BuildContext context) {
    if (winter == true) {
      nycLandmarks.add(EmpireState);
      nycLandmarks.add(CentralPark);
      nycLandmarks.add(StatueOfLiberty);
      winter = false;
    }//Shahzod R
    result = 'The distance is: '+distanceTravel.calc(
        originx: 40.70, originy: -73.99, destinationx: 40.71, destinationy: 74
    ).round().toString();
    return MaterialApp(
      //Shahzod Raufov
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('New York City'),
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
                  'New York City comprises 5 boroughs sitting where the Hudson River meets the Atlantic Ocean. '
                  'At its core is Manhattan, a densely populated borough that’s among the world’s major commercial, financial and cultural centers.'),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(22.0),
                itemCount: nycLandmarks.length,
                itemBuilder: (BuildContext ctxt, final int index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(nycLandmarks[index].image),
                    ),
                    title: Text(nycLandmarks[index].title),
                    subtitle: Text(nycLandmarks[index].description),
                  );
                },
              ),
            ),
            RaisedButton(
                child: Text('State of New York'),
                color: Colors.lightBlueAccent,
                onPressed: ()=>Navigator.pushNamed(context, '/Ny'),
                //onPressed: () => Navigator.push(
                    //context,
                    //MaterialPageRoute(
                        //builder: (BuildContext context) => Ny()))
            ),
            Text(result), //Adding the distance result to bottom of the screen //Shahzod R
          ],
        ),
      ),
    );
  }
}

class Tempe extends StatelessWidget {
  final DBG = new LandMarks(
      title: 'Desert Botanical Garden',
      description: 'Desert Botanical Garden is a 140-acre botanical garden located in Papago Park, at 1201 N. Galvin Parkway in Phoenix, central Arizona',
      image: 'https://media-cdn.tripadvisor.com/media/photo-o/16/e0/51/4d/ottosen-entry-garden.jpg'
  );
  final PapagoPark = new LandMarks(
      title: 'Papago Park',
      description: 'Papago Park is a municipal park of the cities of Phoenix and Tempe, Arizona, United States. It includes Hunt\'s Tomb, which is listed on the National Register of Historic Places.',
      image: 'https://media-cdn.tripadvisor.com/media/photo-w/01/5d/5f/ac/one-of-the-fishing-lakes.jpg'
  );
  final BigSurf = new LandMarks(
      title: 'Big Surf Waterpark',
      description: 'Big Surf is a waterpark located in Tempe, Arizona. Opened in 1969 and financed by the Clairol Company, it boasted the first wave pool in the United States.',
      image: 'https://media-cdn.tripadvisor.com/media/photo-o/08/02/93/71/big-surf-fun.jpg'
  );
  final List<LandMarks> tempeLandmarks=[];
  bool winter = true;
  final distanceTravel = Distance(originx: 40.70, originy: -73.99, destinationx: 33.43, destinationy: 111.94);
  String result = '';
  @override
  Widget build(BuildContext context) {
    if (winter == true) {
      tempeLandmarks.add(DBG);
      tempeLandmarks.add(PapagoPark);
      tempeLandmarks.add(BigSurf);
      winter = false;
    }//Shahzod R
    result = 'The distance is: '+distanceTravel.calc(
        originx: 40.70, originy: -73.99, destinationx: 33.43, destinationy: 111.94
    ).round().toString();
    return MaterialApp(
      //Shahzod Raufov
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('City of Tempe'),
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
              child: Text('Tempe is a city just east of Phoenix, in Arizona.'
                  ' Its striking Tempe Center for the Arts hosts concerts, dance and comedy shows.'
                  ' Nearby, Tempe Town Lake is dotted with kayaks, pedal boats and paddle boards. '),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(22.0),
                itemCount: tempeLandmarks.length,
                itemBuilder: (BuildContext ctxt, final int index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(tempeLandmarks[index].image),
                    ),
                    title: Text(tempeLandmarks[index].title),
                    subtitle: Text(tempeLandmarks[index].description),
                  );
                },
              ),
            ),
            RaisedButton(
                child: Text('State of Arizona'),
                color: Colors.lightBlueAccent,
                onPressed: ()=>Navigator.pushNamed(context, '/Arizona'),
                //onPressed: () => Navigator.push(
                    //context,
                    //MaterialPageRoute(
                        //builder: (BuildContext context) => Arizona()))
            ),
            Text(result), //Adding the distance result to bottom of the screen //Shahzod R
          ],
        ),
      ),
    );
  }
}

class SHill extends StatelessWidget {
  final capitol = new LandMarks(
      title: 'State Capitol',
      description: '',
      image: ''
  );
  final List<LandMarks> shillLandmarks=[];
  bool winter = true;
  final distanceTravel = Distance(originx: 40.70, originy: -73.99, destinationx: 33.80, destinationy: 118.17);
  String result = '';
  @override
  Widget build(BuildContext context) {
    if (winter == true) {
      shillLandmarks.add(capitol);
      winter = false;
    }//Shahzod R
    result = 'The distance is: '+distanceTravel.calc(
        originx: 40.70, originy: -73.99, destinationx: 33.80, destinationy: 118.17
    ).round().toString();
    return MaterialApp(
      //Shahzod Raufov
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('City of Signal Hill'),
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
                  'Signal Hill is a city in Los Angeles County, California.'
                  ' Situated high on a hill, the city is an enclave completely surrounded by the city of Long Beach. '),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(22.0),
                itemCount: shillLandmarks.length,
                itemBuilder: (BuildContext ctxt, final int index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(shillLandmarks[index].image),
                    ),
                    title: Text(shillLandmarks[index].title),
                    subtitle: Text(shillLandmarks[index].description),
                  );
                },
              ),
            ),
            RaisedButton(
                child: Text('State of California'),
                color: Colors.lightBlueAccent,
                onPressed: ()=>Navigator.pushNamed(context, '/California'),
                //onPressed: () => Navigator.push(
                    //context,
                    //MaterialPageRoute(
                        //builder: (BuildContext context) => California()))
            ),
            Text(result), //Adding the distance result to bottom of the screen //Shahzod R
          ],
        ),
      ),
    );
  }
}

class Huntsville extends StatelessWidget {
  final capitol = new LandMarks(
      title: 'State Capitol',
      description: '',
      image: ''
  );
  final List<LandMarks> huntsvilleLandmarks=[];
  bool winter = true;
  final distanceTravel = Distance(originx: 40.70, originy: -73.99, destinationx: 34.73, destinationy: 86.59);
  String result = '';
  @override
  Widget build(BuildContext context) {
    if (winter == true) {
      huntsvilleLandmarks.add(capitol);
      winter = false;
    }//Shahzod R
    result = 'The distance is: '+distanceTravel.calc(
        originx: 40.70, originy: -73.99, destinationx: 34.73, destinationy: 86.59
    ).round().toString();
    return MaterialApp(
      //Shahzod Raufov
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('City of Huntsville'),
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
                  'Huntsville is a city in the Appalachian region of northern Alabama. '
                  'It is the county seat of Madison County but extends west into neighboring Limestone County and south into Morgan County.'
                  ' It was founded in 1805 and became an incorporated town in 1811.'),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(22.0),
                itemCount: huntsvilleLandmarks.length,
                itemBuilder: (BuildContext ctxt, final int index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(huntsvilleLandmarks[index].image),
                    ),
                    title: Text(huntsvilleLandmarks[index].title),
                    subtitle: Text(huntsvilleLandmarks[index].description),
                  );
                },
              ),
            ),
            RaisedButton(
                child: Text('State of Alabama'),
                color: Colors.lightBlueAccent,
                onPressed: ()=>Navigator.pushNamed(context, '/Alabama'),
                //onPressed: () => Navigator.push(
                    //context,
                    //MaterialPageRoute(
                        //builder: (BuildContext context) => Alabama()))
            ),
            Text(result), //Adding the distance result to bottom of the screen //Shahzod R
          ],
        ),
      ),
    );
  }
}

class Tuscaloosa extends StatelessWidget {
  final capitol = new LandMarks(
      title: 'State Capitol',
      description: '',
      image: ''
  );
  final List<LandMarks> tuscaloosaLandmarks=[];
  @override
  Widget build(BuildContext context) {
    tuscaloosaLandmarks.add(capitol);
    return MaterialApp(
      //Shahzod Raufov
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('City of Tuscaloosa'),
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
              child: Text('Tuscaloosa is a city in western Alabama. '
                  'Bryant-Denny Stadium is home to the University of Alabama\'s Crimson Tide football team. '
                  'The Alabama Museum of Natural History exhibits fossils and minerals. '
                  'Antebellum homes like the Battle-Friedman House and Jemison-Van de Graaff Mansion mark the area\'s history. '
                  'Lake Lurleen State Park is northwest of the city.'),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(22.0),
                itemCount: tuscaloosaLandmarks.length,
                itemBuilder: (BuildContext ctxt, final int index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(tuscaloosaLandmarks[index].image),
                    ),
                    title: Text(tuscaloosaLandmarks[index].title),
                    subtitle: Text(tuscaloosaLandmarks[index].description),
                  );
                },
              ),
            ),
            RaisedButton(
                child: Text('State of Alabama'),
                color: Colors.lightBlueAccent,
                onPressed: ()=>Navigator.pushNamed(context, '/Alabama'),
                //onPressed: () => Navigator.push(
                    //context,
                    //MaterialPageRoute(
                        //builder: (BuildContext context) => Alabama()))
            ),
          ],
        ),
      ),
    );
  }
}

class Azusa extends StatelessWidget {
  final capitol = new LandMarks(
      title: 'State Capitol',
      description: '',
      image: ''
  );
  final List<LandMarks> azusaLandmarks=[];
  @override
  Widget build(BuildContext context) {
    azusaLandmarks.add(capitol);
    return MaterialApp(
      //Shahzod Raufov
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('City of Azusa'),
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
              child: Text('Azusa is a city in the San Gabriel Valley,'
                  ' at the foot of the San Gabriel Mountains in Los Angeles County,'
                  ' California, United States, located 20 miles east of downtown Los Angeles.'
                  ' The population was 46,361 at the 2010 census, up from 44,712 at the 2000 census.'),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(22.0),
                itemCount: azusaLandmarks.length,
                itemBuilder: (BuildContext ctxt, final int index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(azusaLandmarks[index].image),
                    ),
                    title: Text(azusaLandmarks[index].title),
                    subtitle: Text(azusaLandmarks[index].description),
                  );
                },
              ),
            ),
            RaisedButton(
                child: Text('State of California'),
                color: Colors.lightBlueAccent,
                onPressed: ()=>Navigator.pushNamed(context, '/Azusa'),
                //onPressed: () => Navigator.push(
                    //context,
                    //MaterialPageRoute(
                        //builder: (BuildContext context) => California()))
            ),
          ],
        ),
      ),
    );
  }
}

class Schaumburg extends StatelessWidget {
  final capitol = new LandMarks(
      title: 'State Capitol',
      description: '',
      image: ''
  );
  final List<LandMarks> schaumburgLandmarks=[];
  @override
  Widget build(BuildContext context) {
    schaumburgLandmarks.add(capitol);
    return MaterialApp(
      //Shahzod Raufov
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('City of Schaumburg'),
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
                  'Schaumburg is a northwestern suburb of Chicago, Illinois.'
                  ' It’s known for the massive Woodfield Mall, with hundreds of shops and restaurants.'
                  ' Nearby, the Legoland Discovery Center features kids\' rides and a 4D cinema.'),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(22.0),
                itemCount: schaumburgLandmarks.length,
                itemBuilder: (BuildContext ctxt, final int index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(schaumburgLandmarks[index].image),
                    ),
                    title: Text(schaumburgLandmarks[index].title),
                    subtitle: Text(schaumburgLandmarks[index].description),
                  );
                },
              ),
            ),
            RaisedButton(
                child: Text('State of Illinois'),
                color: Colors.lightBlueAccent,
                onPressed: ()=>Navigator.pushNamed(context, '/Illinois'),
                //onPressed: () => Navigator.push(
                    //context,
                    //MaterialPageRoute(
                        //builder: (BuildContext context) => Illinois()))
            ),
          ],
        ),
      ),
    );
  }
}

class Pullman extends StatelessWidget {
  final capitol = new LandMarks(
      title: 'State Capitol',
      description: '',
      image: ''
  );
  final List<LandMarks> pullmanLandmarks=[];
  @override
  Widget build(BuildContext context) {
    pullmanLandmarks.add(capitol);
    return MaterialApp(
      //Shahzod Raufov
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('City of Pullman'),
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
              child: Text('Pullman is the largest city in Whitman County, '
                  'located in southeastern Washington state within the Palouse '
                  'region of the Pacific Northwest.'),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(22.0),
                itemCount: pullmanLandmarks.length,
                itemBuilder: (BuildContext ctxt, final int index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(pullmanLandmarks[index].image),
                    ),
                    title: Text(pullmanLandmarks[index].title),
                    subtitle: Text(pullmanLandmarks[index].description),
                  );
                },
              ),
            ),
            RaisedButton(
                child: Text('State of Washington'),
                color: Colors.lightBlueAccent,
                onPressed: ()=>Navigator.pushNamed(context, '/Washington'),
                //onPressed: () => Navigator.push(
                    //context,
                    //MaterialPageRoute(
                        //builder: (BuildContext context) => Washington()))
            ),
          ],
        ),
      ),
    );
  }
}

class Montgomery extends StatelessWidget {
  final capitol = new LandMarks(
      title: 'State Capitol',
      description: '',
      image: ''
  );
  final List<LandMarks> montgomeryLandmarks=[];
  @override
  Widget build(BuildContext context) {
    montgomeryLandmarks.add(capitol);
    return MaterialApp(
      //Shahzod Raufov
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('City of Montgomery'),
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
              child: Text('Montgomery is the capital city of Alabama.'
                  ' The black granite Civil Rights Memorial and adjacent exhibition center commemorate the Civil Rights Movement.'
                  ' Martin Luther King, Jr. preached at the Dexter Avenue Baptist Church, a hub for the Montgomery bus boycott.'
                  ' Close by is the domed, 1850s Alabama State Capitol.'
                  ' East of downtown, the Montgomery Museum of Fine Arts displays'
                  ' porcelain and American and African art.'),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(22.0),
                itemCount: montgomeryLandmarks.length,
                itemBuilder: (BuildContext ctxt, final int index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(montgomeryLandmarks[index].image),
                    ),
                    title: Text(montgomeryLandmarks[index].title),
                    subtitle: Text(montgomeryLandmarks[index].description),
                  );
                },
              ),
            ),
            RaisedButton(
                child: Text('State of Alabama'),
                color: Colors.lightBlueAccent,
                onPressed: ()=>Navigator.pushNamed(context, '/Alabama'),
                //onPressed: () => Navigator.push(
                    //context,
                    //MaterialPageRoute(
                        //builder: (BuildContext context) => Alabama()))
            ),
          ],
        ),
      ),
    );
  }
}

class Amarillo extends StatelessWidget {
  final capitol = new LandMarks(
      title: 'State Capitol',
      description: '',
      image: ''
  );
  final List<LandMarks> amarilloLandmarks=[];
  @override
  Widget build(BuildContext context) {
    amarilloLandmarks.add(capitol);
    return MaterialApp(
      //Shahzod Raufov
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('City of Amarillo'),
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
              child: Text('Amarillo is a city in the Texas Panhandle.'
                  ' It’s a gateway to the vast, trail-lined Palo Duro Canyon State Park.'
                  ' The Cadillac Ranch is an installation of graffiti-decorated cars, partly buried in a field.'),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(22.0),
                itemCount: amarilloLandmarks.length,
                itemBuilder: (BuildContext ctxt, final int index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(amarilloLandmarks[index].image),
                    ),
                    title: Text(amarilloLandmarks[index].title),
                    subtitle: Text(amarilloLandmarks[index].description),
                  );
                },
              ),
            ),
            RaisedButton(
                child: Text('State of Texas'),
                color: Colors.lightBlueAccent,
                onPressed: ()=>Navigator.pushNamed(context, '/Texas'),
                //onPressed: () => Navigator.push(
                    //context,
                    //MaterialPageRoute(
                        //builder: (BuildContext context) => Texas()))
            ),
          ],
        ),
      ),
    );
  }
}

class Athens extends StatelessWidget {
  final capitol = new LandMarks(
      title: 'State Capitol',
      description: '',
      image: ''
  );
  final List<LandMarks> athensLandmarks=[];
  @override
  Widget build(BuildContext context) {
    athensLandmarks.add(capitol);
    return MaterialApp(
      //Shahzod Raufov
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('City of Athens'),
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
                  'Athens is a city and the county seat of Athens County, Ohio, United States.'
                  ' Athens is the home of Ohio University,'
                  ' a large public research university with an enrollment of more than 20,000 students.'),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(22.0),
                itemCount: athensLandmarks.length,
                itemBuilder: (BuildContext ctxt, final int index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(athensLandmarks[index].image),
                    ),
                    title: Text(athensLandmarks[index].title),
                    subtitle: Text(athensLandmarks[index].description),
                  );
                },
              ),
            ),
            RaisedButton(
                child: Text('State of Ohio'),
                color: Colors.lightBlueAccent,
                onPressed: ()=>Navigator.pushNamed(context, '/Ohio'),
                //onPressed: () => Navigator.push(
                    //context,
                    //MaterialPageRoute(
                        //builder: (BuildContext context) => Ohio()))
            ),
          ],
        ),
      ),
    );
  }
}

class Gainesville extends StatelessWidget {
  final capitol = new LandMarks(
      title: 'State Capitol',
      description: '',
      image: ''
  );
  final List<LandMarks> gainesvilleLandmarks=[];
  @override
  Widget build(BuildContext context) {
    gainesvilleLandmarks.add(capitol);
    return MaterialApp(
      //Shahzod Raufov
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('City of Gainesville'),
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
              child: Text('Gainesville is a city in northern Florida.'
                  ' It\'s known for the University of Florida. Set on the sprawling campus,'
                  ' the Florida Museum of Natural History houses fossils and ethnographic exhibits.'),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(22.0),
                itemCount: gainesvilleLandmarks.length,
                itemBuilder: (BuildContext ctxt, final int index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(gainesvilleLandmarks[index].image),
                    ),
                    title: Text(gainesvilleLandmarks[index].title),
                    subtitle: Text(gainesvilleLandmarks[index].description),
                  );
                },
              ),
            ),
            RaisedButton(
                child: Text('State of Florida'),
                color: Colors.lightBlueAccent,
                onPressed: ()=>Navigator.pushNamed(context, '/Florida'),
                //onPressed: () => Navigator.push(
                    //context,
                    //MaterialPageRoute(
                        //builder: (BuildContext context) => Florida()))
            ),
          ],
        ),
      ),
    );
  }
}

class LandMarks {
  final String title, description, image;
  LandMarks({this.title, this.description, this.image});
}

class Distance{
  double originx, originy, destinationx, destinationy;
  double result, x, y, deglen=110.25;
  Distance({this.originx, this.originy, this.destinationx, this.destinationy});

  double calc({originx, originy, destinationx, destinationy}){
    x=originx - destinationx;
    y=(originy - destinationy) * cos(destinationx);
    result = deglen * sqrt(x*x+y*y);
    print('distance is: '+result.toString());
    return result;
  }//Shahzod R
}