import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:coursepages/screens/faculties_list_screen.dart';
import 'package:coursepages/screens/faculties_year_list_screen.dart';
import 'package:coursepages/screens/study_programme_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();

    return MaterialApp(
      title: 'Welcome to Flutter',
      routes: {
        '/': (context) => const FacultiesList(),
        '/years': (context) => const FacultiesYearList(),
        '/studyProgramme': (context) => const StudyProgrammeList()
      },
    );
  }
}








