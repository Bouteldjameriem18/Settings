 import 'package:flutter/material.dart';
class GeoPage extends StatefulWidget {
  @override
  _GeoPageState createState() => _GeoPageState();
}

class _GeoPageState extends State<GeoPage> {
        
        bool value5 = true ; 

void onChangedValue5( bool value) { setState(() { value5= value ; }); }

  Widget _image() {
    return Positioned(
      top: 24,
      child: Image(
        image : AssetImage(  "assets/map.png"),
        height: 250,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }

 
  Widget _switch() {
    return 
      Positioned(
      top: 300, 

      child: Container(
        margin: EdgeInsets.all(20),
        height: 200,
        width: MediaQuery.of(context).size.width * 0.90,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20), 
            boxShadow : [BoxShadow (
             color:Colors.black12,
            blurRadius:10.0,
            offset:new Offset(10.0,10.0),)]),
            
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
               child:  Text( " Activer la fonctionnalité pour permettre aux membres de votre cercle de vous positionner sur la carte ",style: TextStyle( fontSize:15.0)),
            ),
                    
               SizedBox(
                height: 40,
              ),
              new SwitchListTile(
                 value :value5 ,
              onChanged: onChangedValue5 , 
              activeColor: Colors.deepOrange,
              secondary : new Icon(Icons.location_on , color: Color(0xFFF57C00),),
               title: new Text('Géolocalisation',style: TextStyle( fontSize:20.0, color: Color(0xff739D84) )),
          
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
      
        backgroundColor:Color(0xffF2E9DB),
        
      
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            _image(),
            
            _switch(),
          ],
        ),
      ),
    );
  }
}
