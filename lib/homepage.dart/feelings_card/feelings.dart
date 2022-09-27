// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FeelingsCard extends StatelessWidget {
  final emoji;
  final text;
  const FeelingsCard({super.key,required this.emoji, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              color: Colors.blue[600], borderRadius: BorderRadius.circular(15)),
          child: Center(
              child: Text(
            emoji,
            style: TextStyle(color: Colors.white, 
            fontSize: 20
            ),
          )),
        ),
        SizedBox(height: 10,),
        Text(text,style: TextStyle(
          color: Colors.white,
          fontSize: 14
        ),)
      ],
    );
  }
}
