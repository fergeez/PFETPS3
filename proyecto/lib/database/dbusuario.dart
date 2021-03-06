import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';


class DatabaseUsuarios {
  late FirebaseFirestore firestore;
  initiliase() {
    firestore = FirebaseFirestore.instance;
  }

  
  Future<void> create(String name, String lastName, String user, String email,
      String pass) async {
    try {
      await firestore.collection("usuarios").add({
        'nombre': name,
        'apellido': lastName,
        'username': user,
        'correo': email,
        'password': pass,
      });
    } catch (e) {
      print(e);
    }
  }

  
  Future<List> read() async {
    QuerySnapshot querySnapshot;
    List docs = [];
    try {
      querySnapshot = await firestore.collection('usuarios').get();
      if (querySnapshot.docs.isNotEmpty) {
        for (var doc in querySnapshot.docs.toList()) {
          Map a = {
            "id": doc.id,
            "nombre": doc['nombre'],
            "apellido": doc['apellido'],
            "username": doc['username'],
            "password": doc['password'],
            "correo": doc['correo'],
          };
          docs.add(a);
        }
        return docs;
      }
    } catch (e) {
      print(e);
    }
    return read();
  }
}
