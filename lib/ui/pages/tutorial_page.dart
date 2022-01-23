import 'package:flutter/material.dart';
import 'package:prfit_v2/models/exercises.dart';
import 'package:prfit_v2/ui/widgets/tutorial_card.dart';

class TutorialPage extends StatelessWidget {
  const TutorialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          automaticallyImplyLeading: false, title: const Text("Tutorial")),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: exercisesList.map((e) => TutorialCard(e)).toList()),
      ),
    );
  }
}
