import 'package:flutter/material.dart';
 import 'ajoutProduit.dart';

// void main() {
//   runApp(MesProduit());
// }
 
class MesProduit extends StatefulWidget {
  @override
  _MesProduitState createState() => _MesProduitState();
}
 
class _MesProduitState extends State<MesProduit> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Liste Des Produitistrateur De Pharmacie'),
          ),
          body: ListView(children: <Widget>[
            Center(
                child: Text(
              'Produitistrateur',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
            ),
              ElevatedButton(
                    child: Text('Ajouter Produit'),
                    onPressed: () {
                      Navigator.of(context).push(_ajoutProduitRoute());
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
Route _ajoutProduitRoute() {
  return PageRouteBuilder(
    pageBuilder: (BuildContext context,
        Animation<double> animation, //
        Animation<double> secondaryAnimation) {
      return AjoutProduitPage();
    },
    transitionsBuilder: (BuildContext context,
        Animation<double> animation, //
        Animation<double> secondaryAnimation,
        Widget child) {
      return child;
    },
  );
}