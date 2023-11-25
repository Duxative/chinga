import 'package:mysql1/mysql1.dart';

class DBConnection{
  static String host='10.0.2.2',
                user='root',
                //password='',
                db='LonasDB';
  static int puerto=3306;

  DBConnection();

  Future<MySqlConnection> getConnection() async{
    var settings = new ConnectionSettings(
      host: host,
      port: puerto,
      user: user,
      //password: password,
      db: db
    );
    return await MySqlConnection.connect(settings);
  }

}