import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:country_pickers/country_pickers.dart';

class PhonePage extends StatefulWidget {
  @override
  _PhonePageState createState() => _PhonePageState();
}

class _PhonePageState extends State<PhonePage> {
  final formKey = GlobalKey<FormState>();
 

  Widget _text() {
    return Positioned(
      top: 200,
      child: Container(
        margin: EdgeInsets.all(20),
        height: 200,
        width: MediaQuery.of(context).size.width * 0.90,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
                offset: new Offset(10.0, 10.0),
              )
            ]),
        child: Column (
          children: <Widget>[
            SizedBox( height:25.0),
             Row( children: <Widget>[
                
               SizedBox( width: 5.0),
            Expanded(
              child: CountryPickerDropdown(
              
                itemBuilder: _buildDropdownItem,
                onValuePicked: (Country country) {
                  print("${country.name}");
                },
              ),
            ),
            Expanded(
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff739D84))),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange)),
                  hintText: " téléphone",
                  hintStyle:TextStyle(color:Color(0xff739D84), fontSize: 18.0),
                ),
                onChanged: (value) {
                  // this.phoneNo=value;
                  print(value);
                },
              ),
            ),
          ],
          ),
            SizedBox( height : 20.0),
                FlatButton(
                  onPressed: () => formKey.currentState.save(),
                  child: Text('Enregistrer', style : TextStyle(fontSize:18.0)),
                  color: Color(0xFFF1B97A),
                  shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(30.0),),
                  textColor: Colors.white,
                )
            
          ],
        ),
      ),
    );
  }

  Widget _buildDropdownItem(Country country) => Container(
        child: Row(
          children: <Widget>[
            CountryPickerUtils.getDefaultFlagImage(country),
            SizedBox(
              width: 4.0,
            ),
            Text("+${country.phoneCode}(${country.isoCode})"),
          ],
        ),
      );
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
            _text(),
          ],
        ),
      ),
    );
  }
}
