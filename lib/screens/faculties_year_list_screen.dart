import 'package:flutter/material.dart';

class FacultiesYearList extends StatefulWidget {
  const FacultiesYearList({Key? key}) : super(key: key);

  @override
  _FacultiesYearListState createState() => _FacultiesYearListState();
}

class _FacultiesYearListState extends State<FacultiesYearList> {

  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: Text(data['name']),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Center(
              child: Text(data['name'], style: const TextStyle(fontSize: 18.0),),
            ),
          ),
          ListView.builder(scrollDirection: Axis.vertical, shrinkWrap: true, itemCount: 4, itemBuilder: (context, i) => ListTile(title: Text('${i + 1}. godina'), onTap: () {
            Navigator.pushNamed(context, '/studyProgramme', arguments: {
              'acronym': data['acronym'],
              'year': (i+1)
            });
          },),)
        ],
      ),
    );
  }
}