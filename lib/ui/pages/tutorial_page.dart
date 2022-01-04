import 'package:flutter/material.dart';
import 'package:prfit_v2/shared/theme.dart';
import 'package:prfit_v2/ui/widgets/tutorial_card.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget tutorial() {
      return Wrap(
        spacing: 10,
        runSpacing: 10,
        children: const [
          TutorialCard(imageUrl: 'assets/exercises/abs.png', title: 'abs'),
          TutorialCard(imageUrl: 'assets/exercises/back.png', title: 'back'),
          TutorialCard(
              imageUrl: 'assets/exercises/biceps.png', title: 'biceps'),
          TutorialCard(
              imageUrl: 'assets/exercises/calves.png', title: 'calves'),
          TutorialCard(imageUrl: 'assets/exercises/chest.png', title: 'chest'),
          TutorialCard(
              imageUrl: 'assets/exercises/forearms.png', title: 'forearms'),
          TutorialCard(
              imageUrl: 'assets/exercises/glutes.png', title: 'glutes'),
          TutorialCard(
              imageUrl: 'assets/exercises/shoulders.png', title: 'shoulders'),
          TutorialCard(
              imageUrl: 'assets/exercises/triceps.png', title: 'triceps'),
        ],
      );
    }

    return Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [Text("Tutorial"), Icon(Icons.more_vert)],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: tutorial(),
        ));
  }
}
