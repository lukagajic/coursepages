import 'package:flutter/material.dart';
import 'package:coursepages/models/study_programme.dart';

class StudyProgrammeList extends StatefulWidget {
  const StudyProgrammeList({Key? key}) : super(key: key);

  @override
  _StudyProgrammeListState createState() => _StudyProgrammeListState();
}

class _StudyProgrammeListState extends State<StudyProgrammeList> {
  Map studyProgrammeList = {
    'FIR': [StudyProgramme('Informatika i računarstvo', 'IR'), StudyProgramme('Informacione tehnologije', 'IR')],
    'TF': [StudyProgramme('Softversko i informaciono inženjerstvo', 'SII'), StudyProgramme('Software and Data Engineering', 'SDE')],
    'PFB': [StudyProgramme('Poslovna ekonomija', 'PE')],
    'FTHM': [StudyProgramme('Turizam i hotelijerstvo', 'TH')],
    'FFKMS': [StudyProgramme('Fizičko vaspitanje i sport', 'FVS'), StudyProgramme('Menadžment u sportu', 'MS')],
    'FAR': [StudyProgramme('Farmacija', 'FAR')],
    'ŽSOR': [StudyProgramme('Životna sredina i održivi razvoj', 'ŽSOR')],
  };

  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: Text('${data['acronym']} - ${data['year']}. godina'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          ListView.builder(scrollDirection: Axis.vertical, shrinkWrap: true, itemCount: studyProgrammeList[data['acronym']].length, itemBuilder: (context, i) => ListTile(title: Text('${studyProgrammeList[data['acronym']][i].name}'),))
        ],
      ),
    );
  }
}
