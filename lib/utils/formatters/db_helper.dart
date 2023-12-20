import 'package:black_mamba/data/models/app_user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DbHelper {
  static final FirebaseFirestore _db = FirebaseFirestore.instance;
  static const String collectionsUsers = 'Users';


  static Future<void> addUser(AppUser user) {
    return _db.collection(collectionsUsers).doc(user.id).set(user.toJson());
  }
}