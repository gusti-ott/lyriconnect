import 'package:backend/database.dart'; // Adjust import path
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_router/shelf_router.dart';

final _router = Router()
  ..get('/', _rootHandler)
  ..get('/items', _getItems);

Response _rootHandler(Request req) => Response.ok('Server running\n');

Future<Response> _getItems(Request req) async {
  try {
    final conn = await Database.open();
    final result = await conn.execute('SELECT * FROM items');
    return Response.ok(
      result.map((row) => row.toColumnMap()).toList().toString(),
      headers: {'Content-Type': 'application/json'},
    );
  } catch (e) {
    return Response.internalServerError(body: 'Database error: $e');
  }
}

void main() async {
  final server = await io.serve(_router, '127.0.0.1', 8080);
  print('Server running at http://${server.address.host}:${server.port}');
}
