import 'dart:convert';
import 'dart:io';

Future<void> main() async {
  stderr.writeln('cribsheet_mcp: started');

  final lines = stdin
  .transform(utf8.decoder)
  .transform(const LineSplitter());

  await for (final line in lines) {
    stderr.writeln('received: $line');
  }

  stderr.writeln('cribsheet_mcp: stdin_closed exiting');
}