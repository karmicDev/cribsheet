import 'dart:convert';
import 'dart:io';
import 'package:cribsheet_mcp/cribsheet_mcp.dart';

Future<void> main() async {
  stderr.writeln('cribsheet_mcp: started');

  final lines = stdin
  .transform(utf8.decoder)
  .transform(const LineSplitter());

  await for (final line in lines) {
    var decoded = jsonDecode(line);
    if (decoded is Map<String, dynamic>) {
      var response = handle(decoded);
      if (response != null) {
        stdout.writeln(jsonEncode(response));
      }
    }

  }

  stderr.writeln('cribsheet_mcp: stdin_closed exiting');
}