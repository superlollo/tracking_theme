import 'package:flutter/material.dart';

class new_track extends StatelessWidget {
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
                GestureDetector(
                  onTap: () async{
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
        color: Color(0xFFF5B872),
        width: 500,
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xEEFFFFFF),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 52
                    ),
                    child: Text('Aggiungi la tua spedizione',
                    style: TextStyle(fontSize: 30,color: Colors.black),),
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
