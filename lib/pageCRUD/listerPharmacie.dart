import 'package:flutter/material.dart';
 import 'ajoutPharmacie.dart';

// void main() {
//   runApp(MesPharmacie());
// }
 
class MesPharmacie extends StatefulWidget {
  @override
  _MesPharmacieState createState() => _MesPharmacieState();
}
 
class _MesPharmacieState extends State<MesPharmacie> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Liste Des Pharmacieistrateur De Pharmacie'),
          ),
          body: ListView(children: <Widget>[
            Center(
                child: Text(
              'Pharmacieistrateur',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
            ),
              ElevatedButton(
                    child: Text('Ajouter Pharmacie'),
                    onPressed: () {
                      Navigator.of(context).push(_ajoutPharmacieRoute());
                    },
                  ),
            DataTable(
              columns: [
                DataColumn(label: Text('Numero')),
                DataColumn(label: Text('Nom')),
                DataColumn(label: Text('Pharmacie')),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('1')),
                  DataCell(Text('Awa')),
                  DataCell(Text('xxxxxxxxxx')),
                ]),
                DataRow(cells: [
                  DataCell(Text('2')),
                  DataCell(Text('Ndeye')),
                  DataCell(Text('xxxxxxxxxx')),
                ]),
                DataRow(cells: [
                  DataCell(Text('3')),
                  DataCell(Text('Fatima')),
                  DataCell(Text('xxxxxxxx')),
                ]),
              ],
            ),
          ])
          ),
    );
  }
}
Route _ajoutPharmacieRoute() {
  return PageRouteBuilder(
    pageBuilder: (BuildContext context,
        Animation<double> animation, //
        Animation<double> secondaryAnimation) {
      return AjoutPharmaciePage();
    },
    transitionsBuilder: (BuildContext context,
        Animation<double> animation, //
        Animation<double> secondaryAnimation,
        Widget child) {
      return child;
    },
  );
}