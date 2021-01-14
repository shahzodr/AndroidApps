import 'dart:math';
import 'package:flutter/material.dart';

class PictureGallery extends StatefulWidget {
  @override
  _PictureGalleryState createState() => _PictureGalleryState();
}

class _PictureGalleryState extends State<PictureGallery> {
  int countcake=1;
  int countcat=1;
  int countdog=1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(title: Text('Gallery - Shahzod R'),
            backgroundColor: Colors.blueGrey,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(child: Image.asset('lib/images/cake$countcake.png'),
                  onPressed: (){
                    countcake = countcake + 1;
                    setState(() {
                      if(countcake>5) countcake = 1;
                    });
                  },),
                FlatButton(child: Image.asset('lib/images/cat$countcat.png'),
                  onPressed: (){
                    countcat = countcat + 1;
                    setState(() {
                      if(countcat>5) countcat = 1;
                    });
                  },),
                FlatButton(child: Image.asset('lib/images/dog$countdog.png'),
                  onPressed: (){
                    countdog = countdog + 1;
                    setState(() {
                      if(countdog>5) countdog = 1;
                    });
                  },),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FlatButton(
                      color: Colors.indigo,
                      child: Icon(Icons.arrow_back),
                      onPressed: (){
                        countcake = countcake-1;
                        countcat = countcake-1;
                        countdog = countdog-1;
                        if (countcake<1)countcake = 5;
                        if (countcat<1)countcat = 5;
                        if (countdog<1)countdog = 5;
                        setState(() {
                        });
                      },
                    ),
                    FlatButton(
                      color: Colors.indigo,
                      child: Text('Random'),
                      onPressed: (){
                        countcake=Random().nextInt(5)+1;
                        countcat=Random().nextInt(5)+1;
                        countdog=Random().nextInt(5)+1;
                        setState(() {
                        });
                      },
                    ),
                    FlatButton(
                      color: Colors.indigo,
                      child: Icon(Icons.arrow_forward),
                      onPressed: (){
                        countcake = countcake+1;
                        countcat = countcake+1;
                        countdog = countdog+1;
                        if (countcake>5)countcake = 1;
                        if (countcat>5)countcat = 1;
                        if (countdog>5)countdog = 1;
                        setState(() {
                        });
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}
