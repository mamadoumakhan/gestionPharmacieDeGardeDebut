import 'package:flutter/material.dart';
 import 'ajoutLot.dart';

// void main() {
//   runApp(MesLot());
// }
 
class MesLot extends StatefulWidget {
  @override
  _MesLotState createState() => _MesLotState();
}
 
class _MesLotState extends State<MesLot> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Liste Des Lotistrateur De Pharmacie'),
          ),
          body: ListView(children: <Widget>[
            Center(
                child: Text(
              'Lotistrateur',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
            ),
              ElevatedButton(
                    child: Text('Ajouter Lot'),
                    onPressed: () {
                      Navigator.of(context).push(_ajoutLotRoute());
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
Route _ajoutLotRoute() {
  return PageRouteBuilder(
    pageBuilder: (BuildContext context,
        Animation<double> animation, //
        Animation<double> secondaryAnimation) {
      return AjoutLotPage();
    },
    transitionsBuilder: (BuildContext context,
        Animation<double> animation, //
        Animation<double> secondaryAnimation,
        Widget child) {
      return child;
    },
  );
}