import 'package:flutter/material.dart';
import 'package:flutter_project/screens/job.dart';

class ListJob extends StatefulWidget {
  const ListJob({Key? key}) : super(key: key);

  @override
  State<ListJob> createState() => _ListJobState();
}

class _ListJobState extends State<ListJob> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class Job {
  final String title;
  final String address;
  final String companyLogo;
  final String timeAgo;
  final String type;
  final String experienceLevel;
  final String experienceLevelColor;

  bool isMyFav;

  Job(this.title, this.address, this.timeAgo, this.companyLogo, this.type,
      this.experienceLevel, this.experienceLevelColor, this.isMyFav);

  factory Job.fromJson(Map<String, dynamic> json) {
    return new Job(
        json['title'],
        json['address'],
        json['timeAgo'],
        json['companyLogo'],
        json['type'],
        json['experienceLevel'],
        json['experienceLevelColor'],
        json['isMyFav']);
  }
}
