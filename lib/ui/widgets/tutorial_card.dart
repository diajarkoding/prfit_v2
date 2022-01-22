import 'package:flutter/material.dart';
import 'package:prfit_v2/models/exercises.dart';
import 'package:prfit_v2/ui/pages/exercises/abs_list.dart';

class TutorialCard extends StatelessWidget {
  final Exercises exercises;
  const TutorialCard(
    this.exercises, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => const AbsList())),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.296,
        height: MediaQuery.of(context).size.height * 0.239,
        child: Column(
          children: [
            Image.asset(
              exercises.gambar,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Text(exercises.nama)
          ],
        ),
      ),
    );
  }
}
