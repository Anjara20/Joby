import 'package:flutter/material.dart';

class ListJob extends StatefulWidget {
  const ListJob({Key? key}) : super(key: key);

  @override
  State<ListJob> createState() => _ListJobState();
}

class _ListJobState extends State<ListJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("ListeJob"),
      ),
    );
  }
}
