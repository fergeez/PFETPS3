import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ofertas extends StatelessWidget {
  const Ofertas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ofertas",
      home: Hme(),
    );
  }
}

class Hme extends StatefulWidget {
  Hme({Key? key}) : super(key: key);

  @override
  _HmeState createState() => _HmeState();
}

class _HmeState extends State<Hme> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Ofertas"),
          ),
          body: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(70.0),
                child: Image.asset('images/c1.jpg'),
              ),
              Container(
                padding: EdgeInsets.all(70.0),
                child: Image.asset('images/c2.jpg'),
              ),
              Container(
                padding: EdgeInsets.all(70.0),
                child: Image.asset('images/c3.jpg'),
              ),
              Container(
                padding: EdgeInsets.all(70.0),
                child: Image.asset('images/c4.jpg'),
              )
            ],
          )),
    );
  }
}
