import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  ///singleton
  DBHelper._();

  static final DBHelper getInstance = DBHelper._();

  ///table name
  static final String TABLE_NOTE = "note";
  static final String COLUMN_NOTE_SNO = "s_no";
  static final String COLUMN_NOTE_TITLE = "title";
  static final String COLUMN_NOTE_DESCRIPTION = "description";

  Database? myDB;

  ///db Open(path -> if exist -> open else create db)

  Future<Database> getDB() async {
    myDB = myDB ??= await openDB();
    return myDB!;
    //return myDB ?? await openDB();
    // if (myDB != null) {
    //   return myDB!;
    // } else {
    //   myDB = await openDB();
    //   return myDB!;
    // }
  }

  Future<Database> openDB() async {
    Directory appDir = await getApplicationDocumentsDirectory();
    String dbPath = join(appDir.path, "noteDb.db");
    return await openDatabase(
      dbPath,
      onCreate: (db, version) {
        db.execute(
          "create table $TABLE_NOTE($COLUMN_NOTE_SNO integer  primary key autoincrement, $COLUMN_NOTE_TITLE text, $COLUMN_NOTE_DESCRIPTION text)",
        );
      },
      version: 1,
    );
  }

  ///all queries
  ///insert
  Future<bool> addNote({
    required String mTitle,
    required String mDescription,
  }) async {
    var db = await getDB();

    int rowsEffected = await db.insert(TABLE_NOTE, {
      COLUMN_NOTE_TITLE: mTitle,
      COLUMN_NOTE_DESCRIPTION: mDescription,
    });
    return rowsEffected > 0;
  }

  //reading all notes
  Future<List<Map<String, dynamic>>> getAllNotes() async {
    var db = await getDB();

    List<Map<String, dynamic>> mData = await db.query(TABLE_NOTE);

    return mData;
  }

  ///update note
  Future<bool> updateNote({
    required String mTitle,
    required String mDescription,
    required int sno,
  }) async {
    var db = await getDB();
    int rowsEffected = await db.update(TABLE_NOTE, {
      COLUMN_NOTE_TITLE: mTitle,
      COLUMN_NOTE_DESCRIPTION: mDescription,
    }, where: "$COLUMN_NOTE_SNO = $sno");
    return rowsEffected > 0;
  }

  ///delete note
  Future<bool> deleteNote({required int sno}) async {
    var db = await getDB();

    int rowsEffected = await db.delete(
      TABLE_NOTE,
      where: "$COLUMN_NOTE_SNO = ?",
      whereArgs: ['$sno'],
    );

    return rowsEffected > 0;
  }
}
