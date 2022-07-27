import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


class AppDataBase {


 Future<Database> initDB() async{
  final database = openDatabase(
  join(await getDatabasesPath(), 'app_database.db'),
  onCreate: (db, version) async{
    // Run the CREATE TABLE statement on the database.
    await db.execute(
      'CREATE TABLE users(id INTEGER PRIMARY KEY, first_name TEXT, last_name TEXT, email TEXT, phone_number TEXT)',
    );
     return;
  },
  // Set the version. This executes the onCreate function and provides a
  // path to perform database upgrades and downgrades.
  version: 1,
 );
 
 return database;
 }
}