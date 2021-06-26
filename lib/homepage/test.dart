import 'package:flipr/homepage/edit.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  Test({
    Key? key,
    required this.s1,
    required this.s2,
    required this.s3,
    required this.s4,
  });

  final String s1;
  final String s2;
  final String s3;
  final String s4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("From : $s1 \n to: $s2 \nsubject: $s3 \nemail: $s4"),
      ),
    );
  }
}
