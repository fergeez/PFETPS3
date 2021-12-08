import 'package:flutter/material.dart';
import 'package:proyecto/pages/informacion.dart';
import 'package:proyecto/pages/listado.dart';
import 'package:proyecto/pages/noticias.dart';
import 'package:proyecto/pages/ofertas.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: <String, WidgetBuilder>{
      "/inicio": (BuildContext context) => Inicio(),
      "/productos": (BuildContext context) => Categorias(),
      "/ofertas": (BuildContext context) => Ofertas(),
      "/noticias": (BuildContext context) => Noticias(),
      "/informacion": (BuildContext context) => Informacion(),
    }, home: Inicio());
  }
}

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.orange,
      body: Container(
        padding: EdgeInsets.only(top: 400, bottom: 10, right: 10, left: 10),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://s1.eestatic.com/2021/11/25/ciencia/nutricion/629950211_216239294_1024x576.jpg'),
                alignment: Alignment.topCenter)),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/productos");
                        },
                        child: SizedBox(
                          width: 125,
                          height: 125,
                          child: Center(
                              child: Text(
                            "Productos-Categorias",
                            textAlign: TextAlign.center,
                          )),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/ofertas");
                        },
                        child: SizedBox(
                          width: 125,
                          height: 125,
                          child: Center(
                              child: Text(
                            "Ofertas",
                            textAlign: TextAlign.center,
                          )),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/noticias");
                        },
                        child: SizedBox(
                          width: 125,
                          height: 125,
                          child: Center(
                              child: Text(
                            "Noticias",
                            textAlign: TextAlign.center,
                          )),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/informacion");
                        },
                        child: SizedBox(
                          width: 125,
                          height: 125,
                          child: Center(
                              child: Text(
                            "Información",
                            textAlign: TextAlign.center,
                          )),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
