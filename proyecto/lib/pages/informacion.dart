import 'package:flutter/material.dart';

class Informacion extends StatefulWidget {
  Informacion({Key? key}) : super(key: key);

  @override
  _InformacionState createState() => _InformacionState();
}

class _InformacionState extends State<Informacion> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Información'),
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.all(10),
              elevation: 10,
              child: Column(
                children: <Widget>[
                  ListTile(
                    contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                    title: Text('Acerca de'),
                    subtitle: Text(
                      'Somos la mejor tienda en linea con la más alta gama de productos para todas tus necesidades, tomando en cuenta como idea principal el ahorro de tus gastos.',
                      style: TextStyle(fontSize: 15),
                    ),
                    leading: Icon(Icons.info),
                  ),
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.all(10),
              elevation: 10,
              child: Column(
                children: <Widget>[
                  ListTile(
                    contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                    title: Text('Contacto'),
                    subtitle: Text(
                      'Teléfono: 2256-9125 \n Correo: supermall@gmail.com',
                      style: TextStyle(fontSize: 15),
                    ),
                    leading: Icon(Icons.phone),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      //bottomNavigationBar: _bottomNavigatorBar(context),
    ));
  }
}
