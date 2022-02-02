import 'package:flutter/material.dart';
 import 'ajoutCategorie.dart';

// void main() {
//   runApp(MesCategorie());
// }
 
class MesCategorie extends StatefulWidget {
  @override
  _MesCategorieState createState() => _MesCategorieState();
}
 
class _MesCategorieState extends State<MesCategorie> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Liste Des Categorieistrateur De Pharmacie'),
          ),
          body: ListView(children: <Widget>[
            Center(
                child: Text(
              'Categorieistrateur',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
            ),
              ElevatedButton(
                    child: Text('Ajouter Categorie'),
                    onPressed: () {
                      Navigator.of(context).push(_ajoutCategorieRoute());
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
Route _ajoutCategorieRoute() {
  return PageRouteBuilder(
    pageBuilder: (BuildContext context,
        Animation<double> animation, //
        Animation<double> secondaryAnimation) {
      return AjoutCategoriePage();
    },
    transitionsBuilder: (BuildContext context,
        Animation<double> animation, //
        Animation<double> secondaryAnimation,
        Widget child) {
      return child;
    },
  );
}