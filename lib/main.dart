import 'package:laundryapp/appDatabase.dart';
import 'package:laundryapp/dbOperations.dart';
import 'package:flutter/material.dart';
import 'package:laundryapp/myapp.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final db = await AppDataBase().initDB();
  DBOperations(db).insertRecord("Hello", "More", "sam@dot.com", 'hulala');
  runApp(const MyApp());
}
