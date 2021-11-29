import 'package:flutter/material.dart';
import 'package:tracking_theme/new_track.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tracking Theme',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: HomePageScreen(),
    );
  }
}

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  String? tipoPercorso = 'Urbano';
  String messaggio = '';
  final TextEditingController chilometriController = TextEditingController();
  final List<String> tipiPercorso = ['Urbano', 'Extraurbano', 'Misto'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(120),
          child: Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            width: double.maxFinite,
            height: 100,
            decoration: const BoxDecoration(color: Color(0xFFF5B872)),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 24,
                top: 5,
                right: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(72),
                    ),
                    child: Image.network(
                      "https://source.unsplash.com/random",
                      width: 72,
                      height: 72,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 84),
                    child: ElevatedButton(
                      onPressed: () {
                        MaterialPageRoute route = MaterialPageRoute(builder: (_) => new_track());
                        Navigator.push(context, route);
                      },
                      child: const Text(
                        '+ Track',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF5CD7F2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        elevation: 5,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.settings,
                    size: 32,
                    color: Color(0xFFEAEAEA),
                  ),
                  const Icon(
                    Icons.menu,
                    size: 32,
                    color: Color(0xFFEAEAEA),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 0.5,
            left: 0.5,
            right: 0.5,
          ),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 0,
                left: 24,
                right: 24
              ),
              child: TextField(
                controller: chilometriController,
                keyboardType: TextInputType.text,
                style: TextStyle(fontSize: 18, color: Colors.grey[800], height: 1),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(34),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      )),
                  hintText: 'Search',
                  filled: true,
                  fillColor: Colors.white,
                  hintStyle: const TextStyle(fontSize: 18),
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(
                top: 24,
                left: 0,
                right: 0
              ),
              child: Row(
                children:  [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(width: 100,
                        height: 2,
                        color:Colors.white),
                  ),
                  const Text(
                    " Le mie Spedizioni ",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(3.0, 3.0),
                          blurRadius: 16.0,
                          color: Color.fromARGB(240, 0, 0, 0),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 3,
                    ),
                    child: Container(width: 100,
                        height: 2,
                        color:Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(
                  left: 36,
                  right: 36,
                  top: 24
                ),
                itemCount: 16,
                itemBuilder: (BuildContext context, int posizione){
                  return Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    margin: EdgeInsets.all(8),
                    color: Colors.white,
                    child: const ListTile(
                      title: Text('Spedizione 1'),
                      subtitle: Text('In Consegna...'),
                    ),
                  );
                },
              ),
            ),
          ]),
        ),
        backgroundColor: Color(0xFFF5B872));
  }
}
  // void calcolaCosto() {
  //   double costoLitroCarburante = 1.4;
  //   double? numeroChilometri = double.tryParse(chilometriController.text);
  //   double kmTipoPercorso;
  //   double costo;
  //
  //   if (tipoPercorso == tipiPercorso[0]) {
  //     kmTipoPercorso = 14;
  //   } else if (tipoPercorso == tipiPercorso[1]) {
  //     kmTipoPercorso = 18;
  //   } else {
  //     kmTipoPercorso = 16;
  //   }
  //   costo = numeroChilometri! * costoLitroCarburante / kmTipoPercorso;
  //   setState(() {
  //     messaggio =
  //         'Il costo previsto per il tuo viaggio è di € ' + costo.toString();
  //   });
  // }

