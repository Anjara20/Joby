import 'package:flutter/material.dart';

class Cv extends StatefulWidget {
  const Cv({Key? key}) : super(key: key);

  @override
  State<Cv> createState() => _CvState();
}

class _CvState extends State<Cv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Cv_builder"),
      ),
    );
  }
}
