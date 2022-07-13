import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class DatabaseService{

  final String uid;
  DatabaseService({required this.uid});

  //collection reference
  final CollectionReference Usercollection =FirebaseFirestore.instance.collection('userInfo');
  
  Future updateUserName(String Name)async{
    return await Usercollection.doc(uid).set({'Name':Name,},SetOptions(merge: true));
  }

  Future updateUserPhone(String PhoneNumber)async{
    return await Usercollection.doc(uid).set({'PhoneNumber':PhoneNumber,},SetOptions(merge:true));
  }

  // Future<String> getName() async {
  //   DocumentReference documentReference = Usercollection.doc(uid);
  //   String name="";
  //   await documentReference.get().then((snapshot) {
  //     name = snapshot.data().toString();
  //   });
  //   return name;
  // }

} 