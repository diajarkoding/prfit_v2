import 'package:flutter/material.dart';
import 'package:prfit_v2/models/exercises.dart';
import 'package:prfit_v2/shared/theme.dart';
import 'package:prfit_v2/ui/pages/exercises/abs_list.dart';
import 'package:prfit_v2/ui/pages/exercises/back_list.dart';
import 'package:prfit_v2/ui/pages/exercises/biceps_list.dart';
// import 'package:prfit_v2/ui/pages/exercises/calf_list.dart';
// import 'package:prfit_v2/ui/pages/exercises/chest_list.dart';
import 'package:prfit_v2/ui/pages/exercises/forearms_list.dart';
// import 'package:prfit_v2/ui/pages/exercises/legs_list.dart';
import 'package:prfit_v2/ui/pages/exercises/shoulders_list.dart';
// import 'package:prfit_v2/ui/pages/exercises/triceps_list.dart';
import 'package:prfit_v2/ui/widgets/tutorial_card.dart';

class TutorialPage extends StatelessWidget {
  const TutorialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // automaticallyImplyLeading: false,
          title: const Text("Tutorial")),
      body: ListView.builder(
        itemCount: exercisesList.length,
        itemBuilder: (context, index) {
          Exercises exercises = exercisesList[index];
          return Card(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: ListTile(
                title: Text(exercises.nama,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400)),
                leading: Image.asset(
                  exercises.gambar,
                ),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {
                  // switch (exercisesList.length) {
                  //   case 0:
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => const AbsList()));
                  //     break;
                  //   case 1:
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => const AbsList()));
                  //     break;
                  //   case 2:
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => const AbsList()));
                  //     break;
                  //   case 3:
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => const AbsList()));
                  //     break;
                  //   case 4:
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => const AbsList()));
                  //     break;
                  //   case 5:
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => const AbsList()));
                  //     break;
                  //   case 6:
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => const AbsList()));
                  //     break;
                  //   case 7:
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => const AbsList()));
                  //     break;
                  //   case 8:
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => const AbsList()));
                  //     break;
                  // }

                  if (exercises == exercisesList[0]) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AbsList()));
                  } else if (exercises == exercisesList[1]) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BackList()));
                  } else if (exercises == exercisesList[2]) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Bicepslist()));
                  } else if (exercises == exercisesList[3]) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AbsList()));
                  } else if (exercises == exercisesList[4]) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AbsList()));
                  } else if (exercises == exercisesList[5]) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForearmsList()));
                  } else if (exercises == exercisesList[6]) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AbsList()));
                  } else if (exercises == exercisesList[7]) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ShouldersList()));
                  } else if (exercises == exercisesList[8]) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AbsList()));
                  }
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
