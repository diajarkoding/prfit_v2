import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget imageSlide() {
      return Container(
        width: double.infinity,
        height: 210,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
                image: AssetImage(
                  'assets/pinangria/5.jpg',
                ),
                fit: BoxFit.cover)),
      );
    }

    Widget listAbout() {
      return Container(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        // decoration: BoxDecoration(color: Colors.blue),
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffFFFFFF),
                  boxShadow: const [
                    BoxShadow(color: Colors.black26, blurRadius: 1)
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    const Icon(
                      Icons.access_time_outlined,
                      size: 50,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Oprasional",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text("Setiap hari"),
                        Text("07:00 - 21:00"),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffFFFFFF),
                  boxShadow: const [
                    BoxShadow(color: Colors.black26, blurRadius: 1)
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    const Icon(
                      Icons.monetization_on_outlined,
                      size: 50,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Biaya",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text("Rp. 12.000 / hari"),
                        Text("Rp. 140.000 / bulan"),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffFFFFFF),
                  boxShadow: const [
                    BoxShadow(color: Colors.black26, blurRadius: 1)
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    const Icon(
                      Icons.call_outlined,
                      size: 50,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Telepon",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text("0812-2102-270"),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffFFFFFF),
                  boxShadow: const [
                    BoxShadow(color: Colors.black26, blurRadius: 1)
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    const Icon(
                      Icons.location_on_outlined,
                      size: 50,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Alamat",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                            "Jl. Letjen Mashudi No.8, Setiajaya, \nKec. Cibeureum, Tasikmalaya, \nJawa Barat 46115"),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffFFFFFF),
                  boxShadow: const [
                    BoxShadow(color: Colors.black26, blurRadius: 1)
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    const Icon(
                      Icons.now_widgets_outlined,
                      size: 50,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Fasilitas",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.fiber_manual_record,
                              size: 8,
                            ),
                            Text(" Locker")
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.fiber_manual_record,
                              size: 8,
                            ),
                            Text(" Mushola")
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.fiber_manual_record,
                              size: 8,
                            ),
                            Text(" Kamar Mandi")
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.fiber_manual_record,
                              size: 8,
                            ),
                            Text(" Alat Fitnes Komplit")
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [Text("Informasi"), Icon(Icons.more_vert)],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [imageSlide(), listAbout()],
        ),
      ),
    );
  }
}
