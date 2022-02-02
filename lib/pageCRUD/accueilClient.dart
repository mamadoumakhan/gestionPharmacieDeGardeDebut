import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  ListerPharmacie? selectedPharmacie;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("La Page Des Visiteurs De Mon Site"),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton(
                  child: Text("Lister Pharmacies"),
                  onPressed: () {
                    showMyAlertDialog(context);
                  },
                ),
                SizedBox(height: 10,width: 10,),
                   ElevatedButton(
                  child: Text("Pharmacies Le Plus Proche"),
                  onPressed: () {
                    showMyAlertDialog(context);
                  },
                ),
              ],
            ),
            SizedBox(width: 5, height: 5),
            Text("Pharmacie Selectionner: " +
                (this.selectedPharmacie == null
                    ? '?'
                    : this.selectedPharmacie!.name))
          ],
        ),
      ),
      backgroundColor: Colors.orangeAccent,
    );
  }

  void showMyAlertDialog(BuildContext context) {
    var Pharmacies = [
      ListerPharmacie("Pharmacie 1", 67.7),
      ListerPharmacie("Pharmacie 2", 63.1),
      ListerPharmacie("Pharmacie 3", 57.4),
      ListerPharmacie("Pharmacie 4", 44.1),
      ListerPharmacie("Pharmacie 5", 40.2),
      ListerPharmacie("Pharmacie 6", 33.1),
      ListerPharmacie("Pharmacie 7", 31.4),
      ListerPharmacie("Pharmacie 8", 26.2),
      
    ];

    // A List of SimpleDialogOption(s).
    var itemList = Pharmacies
        .map((lang) => SimpleDialogOption(
            onPressed: () {
              // Close and return value
              Navigator.pop(context, lang);
            },
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(lang.name),
                  Text(lang.localisation.toString(),
                      style: TextStyle(color: Colors.red))
                ])))
        .toList();

    // Create SimpleDialog
    SimpleDialog dialog =
        SimpleDialog(title: Text('Selectionner Une Pharmacie:'), children: itemList);

    // Call showDialog function to show dialog.
    Future futureValue = showDialog(
        context: context,
        builder: (BuildContext context) {
          return dialog;
        });

    futureValue.then((Pharmacie) => {
          this.setState(() {
            this.selectedPharmacie = Pharmacie;
          })
        });
  }
}
class ListerPharmacie {
  String name;
  double localisation;

  ListerPharmacie(this.name, this.localisation);
}