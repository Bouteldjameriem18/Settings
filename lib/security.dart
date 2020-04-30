import 'package:flutter/material.dart';
class SecurityPage extends StatefulWidget {
  @override
  _SecurityPageState createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
       
  Widget _image() {
    return Positioned(
      top: 24,
      child: Image(
        image : AssetImage(  "assets/security.png"),
        height: 250,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }

 
  Widget _text() {
    return 
      Positioned(
      top: 280, 

      child: Container(
        margin: EdgeInsets.all(20),
        height: 350,
        width: MediaQuery.of(context).size.width * 0.90,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20), 
            boxShadow : [BoxShadow (
             color:Colors.black12,
            blurRadius:10.0,
            offset:new Offset(10.0,10.0),)]),
            
       
          
          child: Column ( 
            children: <Widget> [  SizedBox(height :10.0),
            Center(child : Text( "Sécurité et confidentialité ", style : TextStyle(fontWeight: FontWeight.bold, fontSize: 28,color: Color(0xff739D84))),),
           SizedBox(height : 30.0),
        Text("Lorsque vous utilisez nos services, vous nous faites confiance pour le traitement de vos informations. Nous savons qu'il s'agit d'une lourde responsabilité, c'est pourquoi nous nous efforçons de les protéger, tout en vous permettant d'en garder le contrôle.", style : TextStyle( fontSize: 20)  , textAlign: TextAlign.center),
    
        SizedBox(height : 15.0),
            Icon( Icons.done_all ,size : 60.0 , color:  Color(0xFFF57C00)), 
            ],

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
