import 'package:flutter/material.dart';
import 'package:prfit_v2/models/exercises.dart';
import 'package:prfit_v2/ui/pages/exercises/abs_list.dart';
import 'package:prfit_v2/ui/pages/exercises/back_list.dart';
import 'package:prfit_v2/ui/pages/exercises/biceps_list.dart';
import 'package:prfit_v2/ui/pages/exercises/forearms_list.dart';
import 'package:prfit_v2/ui/pages/exercises/shoulders_list.dart';
import 'package:prfit_v2/ui/widgets/tutorial_card.dart';

class TutorialPage extends StatelessWidget {
  const TutorialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tutorial")),
      body: Wrap(
          spacing: 10,
          runSpacing: 10,
          children: exercisesList
              .map((e) => GestureDetector(
                  onTap: () {
                    if (e == exercisesList[0]) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AbsList()));
                    } else if (e == exercisesList[1]) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BackList()));
                    } else if (e == exercisesList[2]) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Bicepslist()));
                    } else if (e == exercisesList[3]) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AbsList()));
                    } else if (e == exercisesList[4]) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AbsList()));
                    } else if (e == exercisesList[5]) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ForearmsList()));
                    } else if (e == exercisesList[6]) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AbsList()));
                    } else if (e == exercisesList[7]) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ShouldersList()));
                    } else if (e == exercisesList[8]) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AbsList()));
                    }
                  },
                  child: TutorialCard(e)))
              .toList()),
    );
  }
}
