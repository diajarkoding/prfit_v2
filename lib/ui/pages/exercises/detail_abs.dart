import 'package:flutter/material.dart';

class AbsDetail extends StatelessWidget {
  const AbsDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget imageTutorial() {
      return Container(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xffFFFFFF),
            boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 1)]),
        child: Image.asset(
          'assets/abs/air_bike.gif',
          width: 350,
          height: 350,
        ),
      );
    }

    Widget textTutorial() {
      return Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xffFFFFFF),
            boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 1)]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: Text('Air Bike', style: TextStyle(fontSize: 21.0)),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                children: const [
                  Text(
                    "Bagian otot : ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  Text(
                    'Perut tengah',
                    style: TextStyle(fontSize: 15.0),
                  )
                ],
              ),
            ),
            Row(
              children: const [
                Text(
                  "Alat : ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
                Text(
                  'Berat tubuh',
                  style: TextStyle(fontSize: 15.0),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
              child: Text(
                "Tutorial : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
            ),
            const Text(
              '1). Untuk memulai gerakan, angkat kepala dan lutut menyilang seolah-olah ingin bersentuhan. Jika sikut kanan mengangkat, maka lutut kirilah yang harus diangkat, begitu pula dengan sebaliknya. Sesuai dengan namanya, maka sikap sit-up air bike dilakukan sebagaimana mengayuhkan pijakan sepeda.\n\n2). Untuk mendapatkan hasil yang maksimal, lakukanlah 12-15 reps di setiap masing-masing sisi kaki sebanyak 3set.',
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Air Bike'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [imageTutorial(), textTutorial()],
        ),
      ),
    );
  }
}
