import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

class AjoutFournisseurPage extends StatefulWidget {
  @override
  _AjoutFournisseurPageState createState() => new _AjoutFournisseurPageState();
}

class _AjoutFournisseurPageState extends State<AjoutFournisseurPage> {


  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece of paper on which the UI appears.
    return Scaffold(
      body: Container(
         decoration: new BoxDecoration(color: Colors.white24),
          padding : EdgeInsets.symmetric(vertical: 100, horizontal: 30),
          // Column is a vertical, linear layout.
          child: Container(
            child: ListView(
              children:[
               CircleAvatar(
                      radius: 65,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("Assets/images/image3.jpg"),
                        //backgroundImage: NetworkImage("https://s3.o7planning.com/images/boy-128.png"),
                        
                      ),
                      
                      ),
                      SizedBox(height: 20,),
                Text("Entrez Le Nom Du Fournisseur"),
               SizedBox(height: 20,),
                Container(
                  height: 70,
                  child: TextFormField(
                    decoration: InputDecoration(
                      
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        labelText: 'xxxxxxxxxxxxxxxxxx'
                    ),
                  ),
                ),
                    Text("Entrez Le Mail Du Fournisseur"),
               SizedBox(height: 20,),
                Container(
                  height: 70,
                  child: TextFormField(
                    decoration: InputDecoration(
                      
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        labelText: 'xxxxxxxxxxxxxxxxxx'
                    ),
                  ),
                ),
                    Text("Entrez Le Numero Du Fournisseur"),
               SizedBox(height: 20,),
                Container(
                  height: 70,
                  child: TextFormField(
                    decoration: InputDecoration(
                      
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        labelText: 'xxxxxxxxxxxxxxxxxx'
                    ),
                  ),
                ),
                Text("                    "),
                    Text("Entrez L'adresse Du Fournisseur"),
               SizedBox(height: 20,),
                Container(
                  height: 70,
                  child: TextFormField(
                    decoration: InputDecoration(
                      
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        labelText: 'xxxxxxxxxxxxxxxxxx'
                    ),
                  ),
                ),
                Text("                    "),
                SizedBox(height: 20,),
                Container(
                  height: 60,
                  width: 50,
                  child: FlatButton(
                    onPressed: (){},
                    color: Colors.amber,
                    child: Text('Valider'),
                     textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 60,
                  child: FlatButton(
                    onPressed: (){},
                    color: Colors.redAccent,
                    child: Text('Annuller'),
                     textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                ),
                )
              ],
            ),
          )
      ),
    );
  }
}
