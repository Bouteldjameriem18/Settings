import 'package:flutter/material.dart';
import 'phone.dart';
import 'nom.dart';
import 'adresse.dart';
import 'motdepasse.dart';

class SettingsOnePage extends StatefulWidget {
  static final String path = "lib/src/pages/settings/settings1.dart";

  @override
  _SettingsOnePageState createState() => _SettingsOnePageState();
}

class _SettingsOnePageState extends State<SettingsOnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2E9DB),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 160.0),
                Card(
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  color: Color(0xff739D84),
                  child: ListTile(
                    onTap: () =>
                        Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new NamePage(),
                    )),
                    title: Text("Nom", style: TextStyle(color: Colors.white)),
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.perm_identity,
                        color: Color(0xFFF57C00),
                        size: 30.0,
                      ),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 50.0),
                Container(
                  height: 280,
                  child: Card(
                    elevation: 10.0,
                    margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(
                            Icons.lock_outline,
                            color: Color(0xFFF57C00),
                          ),
                          title: Text("Modifier le mot de passe"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () =>
                              Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => new MotPage(),
                          )),
                        ),
                        _buildDivider(),
                        ListTile(
                          leading: Icon(Icons.mail_outline,
                              color: Color(0xFFF57C00)),
                          title: Text("Modifier l'adresse e-mail"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () =>
                              Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) =>
                                new AdressePage(),
                          )),
                        ),
                        _buildDivider(),
                        ListTile(
                          leading: Icon(
                            Icons.phone,
                            color: Color(0xFFF57C00),
                          ),
                          title: Text("Modifier le numéro de téléphone"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () =>
                              Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => new PhonePage(),
                          )),
                        ),
                        _buildDivider(),
                        ListTile(
                          leading: Icon(Icons.delete_outline,
                              color: Color(0xFFF57C00)),
                          title: Text("Supprimer le compte"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            showDialog(
                              barrierDismissible: false,
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text("Supprimer le compte  ?",
                                      style: TextStyle(
                                        color: Color(0xff739D84),
                                      )),
                                  content: Text(
                                      "Votre compte sera entiérement supprimé, tous les rapports de compte et les données seront perdus"),
                                  actions: <Widget>[
                                    FlatButton(
                                        child: Text('Annuler',
                                            style: TextStyle(
                                              color: Color(0xFFF57C00),
                                            )),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        }),
                                    FlatButton(
                                        child: Text('Supprimer',
                                            style: TextStyle(
                                              color: Color(0xFFF57C00),
                                            )),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        }),
                                  ],
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade400,
    );
  }
}
