import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart' as sql;
class SQLHelper{

  static Future<sql.Database> Mydata() async{
    return sql.openDatabase('mylogin.db',version: 1
        ,onCreate: (sql.Database database, int  version) async{
          await createTable(database);
        });
  }

  static Future<void> createTable(sql.Database database) async {
    await database.execute("""CREATE TABLE login(
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    name TEXT,
    email TEXT,
    password Text
    )""");

  }

  static Future<int>Adduser(String name,String email,String password)async{
    final db=await SQLHelper.Mydata();
    final data={"name":name, "email":email,"password":password};
    final id=await db.insert("login", data,
       );
    return id;
  }
 static Future<List<Map>> userfound(String email)async{
    final db=await SQLHelper.Mydata();
    final data=await db.rawQuery("SELECT * FROM login WHERE  email=$email");
    if(data.isNotEmpty){
      return data;
    }
    else{
      return data;
    }

  }
 static Future<List<Map>>checklogin(String email, String password)async{

    final db=await SQLHelper.Mydata();
    final data= await db.rawQuery("SELECT * FROM login email=$email AND password=$password");
    if(data.isNotEmpty){
      return data;
    }
   return data;

  }
  static Future<List<Map>> getall()async{
    final db=await SQLHelper.Mydata() ;
    final data= await db.rawQuery("SELECT * FROM login");
    return data;

  }
   static Future<void> delete(int id)async{
     final db=await SQLHelper.Mydata();
     db.delete("login", where:"id=?", whereArgs:  [id] );
   }

}
