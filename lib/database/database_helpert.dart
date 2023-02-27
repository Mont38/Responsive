import 'dart:io';

import 'package:app1/models/post_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final nombreBD = 'TECBOOKBD';
  static final versionBD = 1;
  static Database? _database;
  get database async {
    if (_database != null) return _database;

    return _database = await _initDatabase();
  }

  Future<Database> _initDatabase() async {
    Directory folder = await getApplicationDocumentsDirectory();
    String pathBD = join(folder.path, nombreBD);
    return await openDatabase(
      pathBD,
      version: versionBD,
      onCreate: _createTable,
    );
  }

  _createTable(Database bd, int version) {
    String query =
        "create table tblPost (idPost INTEGER PRIMARY KEY,dscPost VARCHAR(200), datePost DATE)";
    bd.execute(query);
  }

  Future<int> INSERTAR(String table, Map<String, dynamic> map) async {
    var conexion = await database;
    return await conexion.insert(table, map);
  }

  Future<int> ACTUALIZAR(String table, dynamic map) async {
    var conexion = await database;
    return await conexion
        .update(table, map, where: 'idPost = ?', whereArgs: [map['idPost']]);
  }

  Future<int> ELIMINAR(String table, int id) async {
    var conexion = await database;
    return await conexion.delete(table, where: 'idPost = ?', whereArgs: [id]);
  }

  Future<List<PostModel>> GETALLPOST() async {
    var conexion = await database;
    var result = conexion.query('tblPost');
   return result.map((post)=>PostModel.fromMap(post)).toList();

  }
}
