import 'dart:async';
import 'dart:convert';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'models.dart';

class AppDatabase {
  static Database? _db;
  static Future init() async {
    if (_db != null) return;
    String path = join(await getDatabasesPath(), 'kezilabda_app.db');
    _db = await openDatabase(path, version: 1, onCreate: (db, v) async {
      await db.execute('''
        CREATE TABLE players (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          number INTEGER,
          name TEXT,
          position TEXT
        )
      ''');
      await db.execute('''
        CREATE TABLE matches (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          type TEXT,
          ageGroup TEXT,
          opponent TEXT,
          result TEXT,
          date TEXT
        )
      ''');
      await db.execute('''
        CREATE TABLE stats (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          matchId INTEGER,
          playerId INTEGER,
          values TEXT
        )
      ''');
    });
  }

  // helper to get players (used by placeholder UI)
  static Future<List<Player>> getPlayers() async {
    final rows = await _db!.query('players', orderBy: 'number ASC');
    return rows.map((r) => Player.fromMap(r)).toList();
  }
}
