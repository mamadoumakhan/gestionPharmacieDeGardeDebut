import 'package:flutter/material.dart';
 import 'ajoutFournisseur.dart';

// void main() {
//   runApp(MesFournisseur());
// }
 
class MesFournisseur extends StatefulWidget {
  @override
  _MesFournisseurState createState() => _MesFournisseurState();
}
 
class _MesFournisseurState extends State<MesFournisseur> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Liste Des Fournisseuristrateur De Pharmacie'),
          ),
          body: ListView(children: <Widget>[
            Center(
                child: Text(
              'Fournisseuristrateur',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
            ),
              ElevatedButton(
                    child: Text('Ajouter Fournisseur'),
                    onPressed: () {
                      Navigator.of(context).push(_ajoutFournisseurRoute());
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
Route _ajoutFournisseurRoute() {
  return PageRouteBuilder(
    pageBuilder: (BuildContext context,
        Animation<double> animation, //
        Animation<double> secondaryAnimation) {
      return AjoutFournisseurPage();
    },
    transitionsBuilder: (BuildContext context,
        Animation<double> animation, //
        Animation<double> secondaryAnimation,
        Widget child) {
      return child;
    },
  );
}