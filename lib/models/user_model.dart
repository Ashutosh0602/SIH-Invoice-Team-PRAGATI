import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? uid;
  late String firstName;
  late String lastName;
  String? phone;
  String? email;
  int? role;

  UserModel(
      {this.uid,
      required this.firstName,
      required this.lastName,
      this.phone,
      this.role,
      this.email});

  UserModel.fromDocumentSnapshot({required DocumentSnapshot documentSnapshot}) {
    print(documentSnapshot.data());
    print('got in');
    uid = documentSnapshot.id;
    firstName = documentSnapshot['firstName'];
    lastName = documentSnapshot['lastName'];
    phone = documentSnapshot['phone'];
    email = documentSnapshot['email'];
    role = documentSnapshot['role'];
    ;
  }
}
