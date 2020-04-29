import 'package:flutter/material.dart';

class NamePage extends StatefulWidget {
  @override
  _NamePageState createState() => _NamePageState();
}

class _NamePageState extends State<NamePage> {
final formKey = GlobalKey<FormState>();
  Map data = {'name': String, 'email': String, 'age': int};
  Widget _image() {
    
     return Center(child :
      Column ( children : <Widget> [ 
       SizedBox( height:50.0), 
       Container (
                    decoration : new  BoxDecoration  (
                      shape: BoxShape.circle, 
                      boxShadow : [ new BoxShadow (
             color:Colors.black12,
            blurRadius:10.0,
            offset:new Offset(0.0,10.0),) ]),
              
                   child: CircleAvatar(
                    radius: 60,
                   backgroundColor: Colors.white, 
                 child : Icon (Icons.perm_identity , color: Color(0xFFF57C00) , size : 65.0 ,  ),
           
                     
                  ),), 
             
    
     
      ],
     ),        

    );
  }
  Widget _text() {
    return 
      Positioned(
      top: 200, 

      child: Container(
        margin: EdgeInsets.all(20),
        height: 150,
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
                  hintText:"Nom",
                  hintStyle:TextStyle(color:Color(0xff739D84), fontSize: 25.0),
                  ),
                 
                ),
               SizedBox( height: 10.0),
                FlatButton(
                  onPressed: () => formKey.currentState.save(),
                  child: Text('Enregistrer' , style : TextStyle( fontSize: 18.0)),
                 color: Color(0xFFF1B97A),
                  shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(30.0),),
                  textColor: Colors.white,
                ),
              ],
              ),
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
           
            _image(),
            _text(),
          ],
        ),
      ),
    );
  }
}
