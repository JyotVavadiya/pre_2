import 'package:path/path.dart';
import 'package:pre_2/models/quote_model.dart';
import 'package:sqflite/sqflite.dart';

class QuoteHelper{
  QuoteHelper._();

  static final QuoteHelper quoteHelper = QuoteHelper._();

  Database? db;

  String dbName = "test.db";
  String tableName = "test";

  String colId = "id";
  String colQuote = "quote";


 
  Future<Database?>initDB() async{
    String path = join(await getDatabasesPath(), dbName);

    db = await openDatabase(path, version: 1, onCreate: (Database db, int version) async{

      String query = "CREATE TABLE IF NOT EXISTS $tableName ($colId INTEGER PRIMARY KEY AUTOINCREMENT, $colQuote TEXT);";

     await db.execute(query);

    });
    return db;
  }

  Future<int> insert1() async {
    db = await initDB();

    String query = "INSERT INTO $tableName ($colQuote) VALUES('The purpose of Over lives is\n         to be happy');";

    return await db!.rawInsert(query);


  }
  Future<int> insert2() async {
    db = await initDB();

    String query = "INSERT INTO $tableName ($colQuote) VALUES('Every strike brings me closer \n          to the next home run');";

    return await db!.rawInsert(query);


  }
  Future<int> insert3() async {
    db = await initDB();



    String query = "INSERT INTO $tableName ($colQuote) VALUES('  Life is really simple, but men \ninsist on making it complicated');";

    return await db!.rawInsert(query);


  }
  Future<int> insert4() async {
    db = await initDB();




    String query = "INSERT INTO $tableName ($colQuote) VALUES('The healthiest response\n         to life is joy');";

    return await db!.rawInsert(query);


  }
  Future<int> insert5() async {
    db = await initDB();




    String query = "INSERT INTO $tableName ($colQuote) VALUES('Life is a flower of which love\n           is the honey');";

    return await db!.rawInsert(query);


  }



  Future<List<Quotes_Model>> getData() async {
    db = await initDB();

    String query = "SELECT * FROM $tableName";

    List<Map<String, dynamic>> data = await db!.rawQuery(query);

    List<Quotes_Model> allData = data.map((e) => Quotes_Model.fromMap(e)).toList();

    return allData;
  }
  Future<int> deleteAllData() async {

    db = await initDB();

    String query = "DELETE FROM $tableName";

    return await db!.rawDelete(query);

  }

}