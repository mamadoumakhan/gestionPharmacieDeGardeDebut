import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

class InscriptionPage extends StatefulWidget {
  @override
  _InscriptionPageState createState() => new _InscriptionPageState();
}

class _InscriptionPageState extends State<InscriptionPage> {


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
                Text("Entrez votre addresse mail"),
               SizedBox(height: 20,),
                Container(
                  height: 70,
                  child: TextFormField(
                    decoration: InputDecoration(
                      
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        labelText: 'makhan@gmail.com'
                    ),
                  ),
                ),
                Text("                    "),
                Text("Entrez votre mot de passe"),
                SizedBox(height: 20,),

                Container(
                  width: 100,
                  height: 70,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(20)
                      ),
                      
                      suffix:  IconButton(icon: Icon(Icons.visibility), onPressed: () {}) ,
                      
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
                ),
                // OutlinedButton(
                //   onPressed:(){},
                //   // borderSide: BorderSide(width: 1.0,color:Color: colors.black)
                //   child: Text('Annuler'),
                //    RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(20),
                //   ),
                  
                // ),
                //  RaisedButton(
                //   onPressed: () {
                //     // Validate will return true if the form is valid, or false if
                //     // the form is invalid.
                //   },
                //   child: Text('Annuler'),
                //   textColor: Colors.white,
                //   color: Colors.redAccent,
                  
                // )
              ],
            ),
          )
      ),
    );
  }
}
// Route _createRoute1() {
//   return PageRouteBuilder(
//     pageBuilder: (BuildContext context,
//         Animation<double> animation, //
//         Animation<double> secondaryAnimation) {
//       return InscriptionPage();
//     },
//     transitionsBuilder: (BuildContext context,
//         Animation<double> animation, //
//         Animation<double> secondaryAnimation,
//         Widget child) {
//       return child;
//     },
//   );
// }