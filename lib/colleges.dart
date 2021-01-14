import 'package:flutter/material.dart';
import 'cities.dart';

//College({this.collegeName, this.collegeLogo,
// this.collegeText, this.cityText, this.cityWidget});

class Asu extends College {
  Asu()
  : super(
    collegeName: 'Arizona State University',
    collegeLogo: 'asu',
    collegeText: 'Located in Phoenix, AZ.'
        ' Tuition for Computer Science is \$29,428 annually.',
    cityText: 'City of Phoenix',
    cityWidget: '/Phoenix',
  );
}//Shahzod R

class Cuny extends College {
  Cuny()
      : super(
    collegeName: 'The City University of New York',
    collegeLogo: 'cuny',
    collegeText: 'Located in New York City, NY.'
        ' Tuition for Computer Science is \$18,600 annually.',
    cityText: 'New York City',
    cityWidget: '/Nyc',
  );
}//Shahzod R

class Uat extends College {
  Uat()
      : super(
    collegeName: 'University of Advancing Technology',
    collegeLogo: 'uat',
    collegeText: 'Located in Tempe, AZ.'
        ' Tuition for Computer Science is \$16,036 annually.',
    cityText: 'City of Tempe',
    cityWidget: '/Tempe',
  );
}//Shahzod R

class Auhs extends College {
  Auhs()
      : super(
    collegeName: 'American University of Health Sciences',
    collegeLogo: 'auhs',
    collegeText: 'Located in Signal Hill, CA.'
        ' Tuition for Computer Science is \$21,420 annually.',
    cityText: 'City of Signal Hill',
    cityWidget: '/SHill',
  );
}//Shahzod R

class Nyu extends College {
  Nyu()
      : super(
    collegeName: 'New York University',
    collegeLogo: 'nyu',
    collegeText: 'Located in New York, NY.'
        ' Tuition for Computer Science is \$59,062 annually.',
    cityText: 'New York City',
    cityWidget: '/Nyc',
  );
}//Shahzod R

class Aamu extends College {
  Aamu()
      : super(
    collegeName: 'Alabama A&M University',
    collegeLogo: 'aamu',
    collegeText: 'Located in Huntsville, AL.'
        ' Tuition for Computer Science is \$15,347 annually.',
    cityText: 'City of Huntsville',
    cityWidget: '/Huntsville',
  );
}//Shahzod R

class Ua extends College {
  Ua()
      : super(
    collegeName: 'University of Alabama',
    collegeLogo: 'ua',
    collegeText: 'Located in Tuscaloosa, Alabama.'
        ' Tuition for Computer Science is \$15,125 annually.',
    cityText: 'City of Tuscaloosa',
    cityWidget: '/Tuscaloosa',
  );
}//Shahzod R

class Apu extends College {
  Apu()
      : super(
    collegeName: 'Azusa Pacific University',
    collegeLogo: 'apu',
    collegeText: 'Located in Azusa, California.'
        ' Tuition for Computer Science is \$40,830 annually.',
    cityText: 'City of Azusa',
    cityWidget: '/Azusa',
  );
}//Shahzod R

class Aiu extends College {
  Aiu()
      : super(
    collegeName: 'American InterContinental University',
    collegeLogo: 'aiu',
    collegeText: 'Located in Schaumburg, IL.'
        ' Tuition for Computer Science is \$20,511 annually.',
    cityText: 'City of Schaumburg',
    cityWidget: '/Schaumburg',
  );
}//Shahzod R

class Wsu extends College {
  Wsu()
      : super(
    collegeName: 'Washington State University',
    collegeLogo: 'wsu',
    collegeText: 'Located in Pullman, Washington'
        ' Tuition for Computer Science is \$24,259 annually.',
    cityText: 'City of Pullman',
    cityWidget: '/Pullman',
  );
}//Shahzod R

class Aum extends College {
  Aum()
      : super(
    collegeName: 'Auburn University at Montgomery',
    collegeLogo: 'aum',
    collegeText: 'Located in Montgomery, AL.'
        ' Tuition for Computer Science is \$18,292 annually.',
    cityText: 'City of Montgomery',
    cityWidget: '/Montgomery',
  );
}//Shahzod R

class Ac extends College {
  Ac()
      : super(
    collegeName: 'Amarillo College',
    collegeLogo: 'ac',
    collegeText: 'Located in Atlantic City, NJ.'
        ' Tuition for Computer Science is \$10,822 annually.',
    cityText: 'City of Amarillo',
    cityWidget: '/Amarillo',
  );
}//Shahzod R

class Ou extends College {
  Ou()
      : super(
    collegeName: 'Ohio University',
    collegeLogo: 'ou',
    collegeText: 'Located in Athens, OH.'
        ' Tuition for Computer Science is \$20,549 annually.',
    cityText: 'City of Athens',
    cityWidget: '/Athens',
  );
}//Shahzod R

class Uf extends College {
  Uf()
      : super(
    collegeName: 'University of Florida',
    collegeLogo: 'uf',
    collegeText: 'Located in Gainesville, Florida.'
        ' Tuition for Computer Science is \$22,278 annually.',
    cityText: 'City of Gainesville',
    cityWidget: '/Gainesville',
  );
}//Shahzod R

class Suny extends College {
  Suny()
      : super(
    collegeName: 'The State University of New York',
    collegeLogo: 'suny',
    collegeText: 'Located in Gainesville, Florida.'
        ' Tuition for Computer Science is \$22,278 annually.',
    cityText: 'New York City',
    cityWidget: '/Nyc',
  );
}//Shahzod R

class College extends StatelessWidget {
  final String collegeName;
  final String collegeLogo;
  final String collegeText;
  final String cityText;
  final String cityWidget;
  College({this.collegeName, this.collegeLogo, this.collegeText, this.cityText, this.cityWidget});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(collegeName),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RaisedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Back'),
            ),
            Image.asset('lib/images/'+collegeLogo+'logo.png'),
            Padding(//Shahzod R
              padding: const EdgeInsets.all(12.0),
              child: Text(collegeText),
            ),
            RaisedButton(
                child: Text(cityText),
                onPressed: ()=> Navigator.pushNamed(context, cityWidget),
                //onPressed: ()=> Navigator.push(context,
                    //MaterialPageRoute(builder: (BuildContext context)=>cityWidget))
            ),
          ],
        ),
      ),
    );
  }
}