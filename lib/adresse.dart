import 'package:flutter/material.dart';
/*import 'package:provider/provider.dart';*/
class AdressePage extends StatefulWidget {
  @override
  _AdressePageState createState() => _AdressePageState();
}

class _AdressePageState extends State<AdressePage> {
final formKey = GlobalKey<FormState>();
  
  Widget _text() {
    return 
      Positioned(
      top: 200, 

      child: Container(
        margin: EdgeInsets.all(20),
        height: 170,
        width: MediaQuery.of(context).size.width * 0.90,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20), 
            boxShadow : [BoxShadow (
             color:Colors.black12,
            blurRadius:10.0,
            offset:new Offset(10.0,10.0),)]),
            
       child: Form(
          key: formKey,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration :InputDecoration (
enabledBorder:UnderlineInputBorder(borderSide :BorderSide(color:Color(0xff739D84))),
focusedBorder:UnderlineInputBorder(borderSide :BorderSide(color:Colors.orange)),
                  hintText:"NomPrenom@gmail.com",
                  hintStyle:TextStyle(color:Color(0xff739D84), fontSize: 25.0),
                  ),
                  
                ),
               SizedBox( height : 20.0 ) , 
                RaisedButton(
                  onPressed: () => formKey.currentState.save(),
                   padding :EdgeInsets.all(15.0),
                  child: Text('Enregistrer', style : TextStyle(fontSize:18.0),),
                  color:  Color(0xFFF1B97A),
                  shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(30.0),),
                  textColor: Colors.white,
                )
              ]),
        ),
          
          
             
              
              
            
          

      
      
    ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        backgroundColor: Color(0xffF2E9DB),
        
      
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
           
            
            _text(),
          ],
        ),
      ),
    );
  }
}
