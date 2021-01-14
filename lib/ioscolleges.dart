import 'package:flutter/material.dart';
import 'main.dart';

class IosColleges extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('iOS Colleges - Shahzod R'),
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
                CollegeButtons(collegeName: 'ASU', college: '/Asu', color1: const Color(0xFF8C1D40),
                    color2: const Color(0xFFFFC627)),
                CollegeButtons(collegeName: 'CUNY', college: '/Cuny',color1: const Color(0xFF1D3A83),
                    color2: const Color(0xFFFFFFFF)),
                CollegeButtons(collegeName: 'UAT', college: '/Uat', color1: const Color(0xFF000000),
                    color2: const Color(0xFFFF0000)),
                CollegeButtons(collegeName: 'AUHS', college: '/Auhs', color1: const Color(0xFFF2F2F2),
                    color2: const Color(0xFF0000FF)),
                CollegeButtons(collegeName: 'NYU', college: '/Nyu', color1: const Color(0xFFf2f2f2),
                    color2: const Color(0xFF57068c)),
              ], //Shahzod R
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CollegeButtons(collegeName: 'AAMU', college: '/Aamu', color1: const Color(0xFFFFFFFF),
                    color2: const Color(0xFF660000)),
                CollegeButtons(collegeName: 'UA', college: '/Ua', color1: const Color(0xFF9E1B32),
                    color2: const Color(0xFFFFFFFF)),
                CollegeButtons(collegeName: 'APU', college: '/Apu', color1: const Color(0xFF8B0000),
                    color2: const Color(0xFF000000)),
                CollegeButtons(collegeName: 'AIU', college: '/Aiu', color1: const Color(0xFFFFFFFF),
                    color2: const Color(0xFF1E90FF)),
                CollegeButtons(collegeName: 'WSU', college: '/Wsu', color1: const Color(0xFF981e32),
                    color2: const Color(0xFFD3D3D3)),
              ], //Shahzod R
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CollegeButtons(collegeName: 'AUM', college: '/Aum', color1: const Color(0xFFFFa500),
                    color2: const Color(0xFF000000)),
                CollegeButtons(collegeName: 'AC', college: '/Ac', color1: const Color(0xFFFFFFFF),
                    color2: const Color(0xFF1E90FF)),
                CollegeButtons(collegeName: 'OU', college: '/Ou', color1: const Color(0xFFFFFFFF),
                    color2: const Color(0xFF00694E)),
                CollegeButtons(collegeName: 'UF', college: '/Uf', color1: const Color(0xFFFA4616),
                    color2: const Color(0xFF0021A5)),
                CollegeButtons(collegeName: 'SUNY', college: '/Suny', color1: const Color(0xFFFFFFFF),
                    color2: const Color(0xFF004C93)),
              ], //Shahzod R
            ),
          ],
        ),
      ),
    );;
  }
}
