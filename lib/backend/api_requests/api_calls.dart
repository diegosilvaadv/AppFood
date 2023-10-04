import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start SetDadosCliente Group Code

class SetDadosClienteGroup {
  static String baseUrl =
      'https://zgnzdzgihtgzpjjulpua.supabase.co/rest/v1/Pedidos_cliente';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InpnbnpkemdpaHRnenBqanVscHVhIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTYyOTYzNTcsImV4cCI6MjAxMTg3MjM1N30.pu8ZfLUxszV-U3nryPh-sQRyMbQExjosix9C6JFvI04',
  };
}

/// End SetDadosCliente Group Code

class SetDadosCall {
  static Future<ApiCallResponse> call({
    String? pedido = '',
    double? valor,
    String? nomeCliente = '',
    String? nMesa = '',
    String? pagamento = '',
    String? quanty = '',
  }) {
    final ffApiRequestBody = '''
{
  "pedido": "${pedido}",
  "valor": ${valor},
  "nome_cliente": "${nomeCliente}",
  "n_mesa": "${nMesa}",
  "pagamento": "${pagamento}",
  "quanty": "${quanty}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SetDados',
      apiUrl:
          'https://zgnzdzgihtgzpjjulpua.supabase.co/rest/v1/Pedidos_cliente',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InpnbnpkemdpaHRnenBqanVscHVhIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTYyOTYzNTcsImV4cCI6MjAxMTg3MjM1N30.pu8ZfLUxszV-U3nryPh-sQRyMbQExjosix9C6JFvI04',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
