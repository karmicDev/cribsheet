import 'dart:collection';

/// Handles one JSON-RPC message. Returns the response,
/// or null when no response is due (notifications).
Map<String, dynamic>? handle(Map<String, dynamic> request) {
final id = request['id'];
final method = request['method'];

// A message without an 'id' key is a notification. Return null.
if (!request.containsKey('id')) {
  return null;
}

switch (method) {
  case 'server/discover':
    // TODO 2: return a response with 'jsonrpc', the same 'id',
    // and a 'result' shaped as the spec's server/discover page requires.
    return {
            'jsonrpc': '2.0',
            'id': id,
            'result': {
              'resultType': 'complete',
              'supportedVersions': ['2026-07-28'],
              'capabilities': {'tools': {}},
              '_meta': {
              'io.modelcontextprotocol/serverInfo': {
              'name': 'Cribsheet MCP-Server',
              'version': '0.0.1'
               }
              },
              'instructions': 'This server provides flutter utilities.',
              'ttlMs': 3600000,
              'cacheScope': 'public'
            }
          };
  default:
    // TODO 3: return a response with 'jsonrpc', the same 'id',
    // and an 'error' with code -32601 and a message.
    return {
            'jsonrpc': '2.0',
            'id': id,
            'error': {
              'code': -32601,
              'message': 'Method not found: $method',
            }
          };
}
}