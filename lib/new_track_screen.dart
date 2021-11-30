import 'package:flutter/material.dart';
import 'package:tracking_theme/main.dart';

class new_track_screen extends StatefulWidget {
  @override
  _new_track_screenState createState() => _new_track_screenState();
}

class _new_track_screenState extends State<new_track_screen> {
  final TextEditingController titoloController = TextEditingController();
  final TextEditingController trackIdController = TextEditingController();
  String corriere = 'Bartolini';
  final List<String> listaCorrieri = ['Bartolini', 'DHL', 'SDA'];
  String tema = 'Standard';
  final List<String> listaTemi = ['Standard', 'Pokemon', 'Metal Slug'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: Container(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          width: double.maxFinite,
          height: 100,
          decoration: const BoxDecoration(color: Color(0xFFFFD2AF)),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 24,
              top: 5,
              right: 24,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () async {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 32,
                    color: Color(0xFFEAEAEA),
                  ),
                ),
                const Icon(
                  Icons.settings,
                  size: 32,
                  color: Color(0xFFEAEAEA),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        color: Color(0xFFFFD2AF),
        width: 500,
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xCBF6F6F6),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 52),
                    child: Text(
                      'Aggiungi la tua spedizione',
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: titoloController,
                      keyboardType: TextInputType.text,
                      style: TextStyle(
                          fontSize: 18, color: Colors.grey[800], height: 1),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                            borderSide: const BorderSide(
                                width: 2,
                                style: BorderStyle.none,
                                color: Colors.black)),
                        hintText: 'Titolo',
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: trackIdController,
                      keyboardType: TextInputType.text,
                      style: TextStyle(
                          fontSize: 18, color: Colors.grey[800], height: 1),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                            borderSide: const BorderSide(
                                width: 2,
                                style: BorderStyle.none,
                                color: Colors.black)),
                        hintText: 'Numero Spedizione',
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16)),
                      child: DropdownButton<String>(
                        borderRadius: BorderRadius.circular(16),
                        isExpanded: true,
                        value: corriere,
                        underline: SizedBox(),
                        items: listaCorrieri.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey[800],
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? nuovoValore) {
                          setState(() {
                            corriere = nuovoValore!;
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.orange),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16)),
                      child: DropdownButton<String>(
                        borderRadius: BorderRadius.circular(16),
                        isExpanded: true,
                        value: tema,
                        underline: SizedBox(),
                        items: listaTemi.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey[800],
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? nuovoValore) {
                          setState(() {
                            tema = nuovoValore!;
                          });
                        },
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ConstrainedBox(
                      constraints: BoxConstraints.tightFor(width: 300, height: 40),
                      child: ElevatedButton(
                        onPressed: () {
                          MaterialPageRoute route = MaterialPageRoute(builder: (_) => HomePageScreen());
                          Navigator.push(context, route);
                        },
                        child: const Text(
                          'Continua',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        style: ElevatedButton.styleFrom(

                          primary: Color(0xFF25CE7A),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)
                          ),
                          elevation: 5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
