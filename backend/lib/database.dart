import 'package:postgres/postgres.dart';

import 'config_loader.dart';

class Database {
  static Future<Connection> open() async {
    final config = await loadConfig();

    final connection = await Connection.open(
      Endpoint(
        host: config.dbHost, // Using IP as requested
        port: config.serverPort,
        database: config.dbName, // Your DB name
        username: config.dbUser, // Your DB user
        password: config.dbPassword, // Your DB password
      ),
      settings: ConnectionSettings(
        sslMode: SslMode.disable,
      ),
    );
    print('✅ Database connected');
    return connection;
  }
}
