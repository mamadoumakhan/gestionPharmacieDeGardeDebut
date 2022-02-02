import 'package:flutter/material.dart';
import 'pageAuth/inscription.dart';
import 'pageCRUD/ajoutCategorie.dart';
import 'pageCRUD/ajoutFournisseur.dart';
import 'pageCRUD/ajoutProduit.dart';
import 'pageCRUD/ajoutLot.dart';
import 'pageCRUD/ajoutAdmin.dart';
import 'pageCRUD/ajoutPharmacie.dart';
import 'pageCRUD/ajoutClient.dart';
import 'pageCRUD/ajoutAdmin.dart';
import 'pageCRUD/ajoutTableau.dart';
import 'pageCRUD/accueilAdmin.dart';
import 'pageCRUD/accueilClient.dart';
import 'pageCRUD/accueilSuperAdmin.dart';
import 'pageCRUD/testeDatatable.dart';
import 'pageCRUD/listerAdmin.dart';
import 'pageCRUD/listerPharmacie.dart';
import 'pageCRUD/listerProduit.dart';
import 'pageCRUD/listerTableau.dart';
import 'pageCRUD/listerCategorie.dart';
import 'pageCRUD/listerFournisseur.dart';
import 'pageCRUD/listerLot.dart';
import 'pageCRUD/listerAgent.dart';
import 'pageCRUD/listerClient.dart';
import 'pageCRUD/listerAgent.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projet Classe',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // home: AjoutFournisseurPage(),
      home: MyHomePage(
        title: 'pade d\'acueil',
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
// xxxxxxxxxxxxxxxxxxxx mes differentes pages xxxxxxxxxxxxxxxxx


// xxxxxxxxxxxxxxxxxxxx mes differentes pages xxxxxxxxxxxxxxxxx

// xxxxxxxxxxxxxxxxxxxxxxx mes differentes routes xxxxxxxxxxxxxxxxx


Route _listeCategorieRoute() {
  return PageRouteBuilder(
    pageBuilder: (BuildContext context,
        Animation<double> animation, //
        Animation<double> secondaryAnimation) {
      return Page3();
    },
    transitionsBuilder: (BuildContext context,
        Animation<double> animation, //
        Animation<double> secondaryAnimation,
        Widget child) {
      return child;
    },
  );
}
Route _listeFournisseurRoute() {
  return PageRouteBuilder(
    pageBuilder: (BuildContext context,
        Animation<double> animation, //
        Animation<double> secondaryAnimation) {
      return MesFournisseur();
    },
    transitionsBuilder: (BuildContext context,
        Animation<double> animation, //
        Animation<double> secondaryAnimation,
        Widget child) {
      return child;
    },
  );
}
Route _listeTableauRoute() {
  return PageRouteBuilder(
    pageBuilder: (BuildContext context,
        Animation<double> animation, //
        Animation<double> secondaryAnimation) {
      return MesTableau();
    },
    transitionsBuilder: (BuildContext context,
        Animation<double> animation, //
        Animation<double> secondaryAnimation,
        Widget child) {
      return child;
    },
  );
}
Route _listeLotRoute() {
  return PageRouteBuilder(
    pageBuilder: (BuildContext context,
        Animation<double> animation, //
        Animation<double> secondaryAnimation) {
      return MesLot();
    },
    transitionsBuilder: (BuildContext context,
        Animation<double> animation, //
        Animation<double> secondaryAnimation,
        Widget child) {
      return child;
    },
  );
}
Route _listeClientRoute() {
  return PageRouteBuilder(
    pageBuilder: (BuildContext context,
        Animation<double> animation, //
        Animation<double> secondaryAnimation) {
      return MesClient();
    },
    transitionsBuilder: (BuildContext context,
        Animation<double> animation, //
        Animation<double> secondaryAnimation,
        Widget child) {
      return child;
    },
  );
}
// Route _ajoutAdminRoute() {
//   return PageRouteBuilder(
//     pageBuilder: (BuildContext context,
//         Animation<double> animation, //
//         Animation<double> secondaryAnimation) {
//       return AjoutAdminPage();
//     },
//     transitionsBuilder: (BuildContext context,
//         Animation<double> animation, //
//         Animation<double> secondaryAnimation,
//         Widget child) {
//       return child;
//     },
//   );
// }
Route _listeAdminRoute() {
  return PageRouteBuilder(
    pageBuilder: (BuildContext context,
        Animation<double> animation, //
        Animation<double> secondaryAnimation) {
      return MesAdmin();
    },
    transitionsBuilder: (BuildContext context,
        Animation<double> animation, //
        Animation<double> secondaryAnimation,
        Widget child) {
      return child;
    },
  );
}
Route _listePharmacieRoute() {
  return PageRouteBuilder(
    pageBuilder: (BuildContext context,
        Animation<double> animation, //
        Animation<double> secondaryAnimation) {
      return MesPharmacie();
    },
    transitionsBuilder: (BuildContext context,
        Animation<double> animation, //
        Animation<double> secondaryAnimation,
        Widget child) {
      return child;
    },
  );
}
Route _listeProduitRoute() {
  return PageRouteBuilder(
    pageBuilder: (BuildContext context,
        Animation<double> animation, //
        Animation<double> secondaryAnimation) {
      return MesProduit();
    },
    transitionsBuilder: (BuildContext context,
        Animation<double> animation, //
        Animation<double> secondaryAnimation,
        Widget child) {
      return child;
    },
  );
}
Route _createRoute() {
  return PageRouteBuilder(pageBuilder: (BuildContext context,
      Animation<double> animation, //
      Animation<double> secondaryAnimation) {
    return DataTableExample();
  }, transitionsBuilder: (BuildContext context,
      Animation<double> animation, //
      Animation<double> secondaryAnimation,
      Widget child) {
    return new ScaleTransition(
        scale: new Tween<double>(
          begin: 0.0,
          end: 1.0,
        ).animate(
          CurvedAnimation(
            parent: animation,
            curve: Interval(
              0.09,
              0.90,
              curve: Curves.easeInCirc,
            ),
          ),
        ),
        child: child);
  });
}

// xxxxxxxxxxxxxxxxxxxxxxx mes differentes routes xxxxxxxxxxxxxxxxx
class _MyHomePageState extends State<MyHomePage> {
  int tapCount = 0;
  int selectedIndex = 0;
  Widget _monStock = MonStock();
  Widget _mesVentes = MesVentes();
  Widget _mesClients = MesClients();
  //String answer = "?";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
           
          IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
          ),
          IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: () {},
          ),
          ],
        title: Text('Application De Gestion De Pharmacie'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            //width: 200,
            //height: 200,
            child: Card(
              margin: EdgeInsets.only(top: 10, bottom: 0, left: 10, right: 10),
              color: Colors.green[100],
              shadowColor: Colors.blueGrey,
              // elevation: 20,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.album, color: Colors.green, size: 45),
                    title: Text(
                      "Bienvenue Sur L'espace D'Administration",
                      style: TextStyle(fontSize: 20),
                    ),
                    // subtitle: Text('je mettrer ici du texte'),
                  ),
                  // RaisedButton(
                  //     onPressed: _button,
                  //     child: Text('RaisedButton',
                  //         style: TextStyle(color: Colors.red)),
                  //     elevation: 8),
                  ElevatedButton(
                    child: Text('             '),
                    onPressed: () {
                      Navigator.of(context).push(_createRoute());
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30,),
          Column(
            
            children: [
          Row(
            children: [
              InkWell(
                onTap: (){
                  Navigator.of(context).push(_listeProduitRoute());
                },
                child: Container(
                  height: 100,
                  width: 200,
                  child: Card(
                     shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.green, width: 3),
                        borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                      child: Column(
                    children: [
                        
                      Image.asset(
                        'Assets/images/image1.jpg',
                        fit: BoxFit.cover,
                        height: 50,
                  width: 50,
                      ),
                       Text(
                            "Gestoin Produit",
                            style: TextStyle(fontSize: 18,color: Colors.green),
                          ),
                    ],
                  )),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(_listeLotRoute());
                },
                child: Container(
                  height: 100,
                  width: 200,
                  child: Card(
                     shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.green, width: 3),
                        borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                      child: Column(
                    children: [
                        
                      Image.asset(
                        'Assets/images/image1.jpg',
                        fit: BoxFit.cover,
                        height: 50,
                  width: 50,
                      ),
                       Text(
                            "Gestoin Stock",
                            style: TextStyle(fontSize: 18,color: Colors.green),
                          ),
                    ],
                  )),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              InkWell(
                onTap: (){
                  Navigator.of(context).push(_listeTableauRoute());
                },
                child: Container(
                  height: 100,
                  width: 200,
                  child: Card(
                     shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.green, width: 3),
                        borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                      child: Column(
                    children: [
                        
                      Image.asset(
                        'Assets/images/image1.jpg',
                        fit: BoxFit.cover,
                        height: 50,
                  width: 50,
                      ),
                       Text(
                            "Gestoin Tableau",
                            style: TextStyle(fontSize: 18,color: Colors.green),
                          ),
                    ],
                  )),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(_listeFournisseurRoute());
                },
                child: Container(
                  height: 100,
                  width: 200,
                  child: Card(
                     shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.green, width: 3),
                        borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                      child: Column(
                    children: [
                        
                      Image.asset(
                        'Assets/images/image1.jpg',
                        fit: BoxFit.cover,
                        height: 50,
                  width: 50,
                      ),
                       Text(
                            "Gestoin Fournisseur",
                            style: TextStyle(fontSize: 18,color: Colors.green),
                          ),
                    ],
                  )),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              InkWell(
                onTap: (){
                  Navigator.of(context).push(_listeCategorieRoute());
                },
                child: Container(
                  height: 100,
                  width: 200,
                  child: Card(
                     shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.green, width: 3),
                        borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                      child: Column(
                    children: [
                        
                      Image.asset(
                        'Assets/images/image1.jpg',
                        fit: BoxFit.cover,
                        height: 50,
                  width: 50,
                      ),
                       Text(
                            "Gestoin Categorie",
                            style: TextStyle(fontSize: 18,color: Colors.green),
                          ),
                    ],
                  )),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(_listeAdminRoute());
                },
                child: Container(
                  height: 100,
                  width: 200,
                  child: Card(
                     shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.green, width: 3),
                        borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                      child: Column(
                    children: [
                        
                      Image.asset(
                        'Assets/images/image1.jpg',
                        fit: BoxFit.cover,
                        height: 50,
                  width: 50,
                      ),
                       Text(
                            "Gestoin Admin",
                            style: TextStyle(fontSize: 18,color: Colors.green),
                          ),
                    ],
                  )),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [

              InkWell(
                onTap: (){
                  Navigator.of(context).push(_listePharmacieRoute());
                },
                child: Container(
                  height: 100,
                  width: 200,
                  child: Card(
                     shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.green, width: 3),
                        borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                      child: Column(
                    children: [
                        
                      Image.asset(
                        'Assets/images/image1.jpg',
                        fit: BoxFit.cover,
                        height: 50,
                  width: 50,
                      ),
                       Text(
                            "Gestoin Pharmacie",
                            style: TextStyle(fontSize: 18,color: Colors.green),
                          ),
                    ],
                  )),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(_listeClientRoute());
                },
                child: Container(
                  height: 100,
                  width: 200,
                  child: Card(
                     shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.green, width: 3),
                        borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                      child: Column(
                    children: [
                        
                      Image.asset(
                        'Assets/images/image1.jpg',
                        fit: BoxFit.cover,
                        height: 50,
                  width: 50,
                      ),
                       Text(
                            "Gestoin Client",
                            style: TextStyle(fontSize: 18,color: Colors.green),
                          ),
                    ],
                  )),
                ),
              ),
            ],
          ),
        
            ],
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage('Assets/images/image1.jpg'),
                      fit: BoxFit.cover)
                      ),
              child: Text(
                'Mon tableau de bord',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('contact'),
            ),
            ListTile(
              title: Text('email'),
            ),
            ListTile(
              title: Text('parametres'),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: this.selectedIndex,
        iconSize: 40,
        selectedLabelStyle:
            TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        unselectedLabelStyle: TextStyle(fontStyle: FontStyle.italic),
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.greenAccent,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Stock"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Vente"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Clients"),
          )
        ],
        onTap: (int index) {
          this.onTapHandler(index);
        },
      ),
    );
  }

  Widget getBody() {
    if (this.selectedIndex == 0) {
      return this._monStock;
    } else if (this.selectedIndex == 1) {
      return this._mesVentes;
    } else {
      return this._mesClients;
    }
  }

  void onTapHandler(int index) {
    this.setState(() {
      this.tapCount++;
      this.selectedIndex = index;
    });
  }
}

class MonStock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Stock"));
  }
}

class MesVentes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Vente"));
  }
}

class MesClients extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Client"));
  }
}
