import 'package:coursepages/models/faculty.dart';
import 'package:flutter/material.dart';


class FacultiesList extends StatefulWidget {
  const FacultiesList({Key? key}) : super(key: key);

  @override
  _FacultiesListState createState() => _FacultiesListState();
}

class _FacultiesListState extends State<FacultiesList> {

  List<Faculty> faculties = [
    Faculty("Fakultet za informatiku i računarstvo", "FIR"),
    Faculty("Tehnički fakultet", "TF"),
    Faculty("Fakultet za turistički i hotelijerski menadžment", "FTHM"),
    Faculty("Poslovni fakultet u Beogradu", "PFB"),
    Faculty("Fakultet za fizičku kulturu i menadžment u sportu", "FFKMS"),
    Faculty("Farmacija", "FAR"),
    Faculty("Životna sredina i održivi razvoj", "ŽSOR")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stranice predmeta'),
        backgroundColor: Colors.redAccent,
      ),
      body: ListView.builder(
        itemCount: faculties.length,
        itemBuilder: (ctx, i) {
          String toShow = '${faculties[i].acronym} - ${faculties[i].name}';
          return ListTile(
            title: Text(toShow),
            onTap: () {
              Navigator.pushNamed(context, '/years', arguments: {
                'acronym': faculties[i].acronym,
                'name': faculties[i].name
              });
            },
          );
        },
      ),
    );
  }
}