import 'dart:io';

import 'package:dotenv/dotenv.dart';
import 'package:yaml/yaml.dart';

class Config {
  final Map<String, dynamic> _data;
  final DotEnv _env;

  Config(this._data, this._env);

  String get dbHost => _get('database.host');
  String get dbUser => _get('database.user');
  String get dbName => _get('database.name');
  String get dbPort => _get('database.port');
  String get dbPassword => _get('database.password');
  int get serverPort => int.parse(_get('server.port'));

  String _get(String path) {
    final keys = path.split('.');
    dynamic value = _data;

    for (final key in keys) {
      value = value[key];
    }

    if (value is String && value.startsWith(r'${') && value.endsWith('}')) {
      return _env[value.substring(2, value.length - 1)] ?? '';
    }
    return value.toString();
  }
}

Future<Config> loadConfig() async {
  final env = DotEnv()..load(['../.env']); // ← Changed path

  // Convert YamlMap to regular Map
  final baseYaml = Map<String, dynamic>.from(loadYaml(await File('config/config.yaml').readAsString()));

  final envYamlFile = File('config/config.${env['ENV'] ?? 'dev'}.yaml');
  if (await envYamlFile.exists()) {
    baseYaml.addAll(Map<String, dynamic>.from(loadYaml(await envYamlFile.readAsString())));
  }

  return Config(baseYaml, env);
}
