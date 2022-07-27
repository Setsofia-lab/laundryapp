import 'package:laundryapp/user.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:laundryapp/appDatabase.dart';

class DBOperations {

  Database _database;
  DBOperations(this._database);

  Future<void> insertRecord (String first_name, String last_name, String email, String password)async{
  Map <String, Object> userMap = {
    "id" : DateTime.now().microsecond,
    "first_name" : first_name,
    "last_name" : last_name,
    "email" : email,
    "password" : password,
     };
  
   await _database.insert(
    'user',
    userMap,
    conflictAlgorithm: ConflictAlgorithm.replace,
  );

  }
  Future<List<User>> users() async {
  final db = await _database;
  final List<Map<String, dynamic>> maps = await _database.query('users');
  return List.generate(maps.length, (i) {
    return User(
      id: maps[i]['id'],
      first_name: maps[i]['first_name'],
      last_name: maps[i]['last_name'],
      email: maps[i]['email'],
      password: maps[i]['password'],
    );
  });
}
}