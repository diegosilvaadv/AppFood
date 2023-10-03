// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PedidoStruct extends BaseStruct {
  PedidoStruct({
    String? nome,
    String? preco,
  })  : _nome = nome,
        _preco = preco;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;
  bool hasNome() => _nome != null;

  // "preco" field.
  String? _preco;
  String get preco => _preco ?? '';
  set preco(String? val) => _preco = val;
  bool hasPreco() => _preco != null;

  static PedidoStruct fromMap(Map<String, dynamic> data) => PedidoStruct(
        nome: data['nome'] as String?,
        preco: data['preco'] as String?,
      );

  static PedidoStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PedidoStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
        'preco': _preco,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'preco': serializeParam(
          _preco,
          ParamType.String,
        ),
      }.withoutNulls;

  static PedidoStruct fromSerializableMap(Map<String, dynamic> data) =>
      PedidoStruct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        preco: deserializeParam(
          data['preco'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PedidoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PedidoStruct && nome == other.nome && preco == other.preco;
  }

  @override
  int get hashCode => const ListEquality().hash([nome, preco]);
}

PedidoStruct createPedidoStruct({
  String? nome,
  String? preco,
}) =>
    PedidoStruct(
      nome: nome,
      preco: preco,
    );
