import 'package:flutter/material.dart';

class CustomClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Class - Shahzod R'),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: RowsContent('are', 'you', 'there')),
              Expanded(
                  child: DecoratedBox(
                      decoration: BoxDecoration(color: Colors.lightGreenAccent),
                      child:
                      Expanded(child: RowsContent('river', 'is', 'flowing')))),
            ],
          )
      ),
    );
  }
}

class RowsContent extends StatelessWidget {
  final String first, second, third;
  const RowsContent(this.first, this.second, this.third);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(first),
        ),
        Expanded(
          child: Text(second),
        ),
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain,
            child: Icon(Icons.attach_money, size: 40),
          ),
        )
      ],
    );
  }
}