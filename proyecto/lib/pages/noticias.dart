import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Noticias extends StatefulWidget {
  Noticias({Key? key}) : super(key: key);

  @override
  _NoticiasState createState() => _NoticiasState();
}

class _NoticiasState extends State<Noticias> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Noticias'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(70.0),
            child: Image.asset(
              'images/nt1.jpg',
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: RaisedButton(
              color: Colors.white,
              shape: new RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              onPressed: () {
                launch(
                    "https://www.elsalvador.com/recomendados/walmart-agricultura-empresas/883533/2021/");
              },
              child: SizedBox(
                width: 100,
                height: 100,
                child: Center(
                    child: Text(
                  "Ver Noticia",
                  textAlign: TextAlign.left,
                )),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
