// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PedidoStruct extends BaseStruct {
  PedidoStruct({
    String? nome,
    String? preco,
    PedidoStruct? quantidade,
  })  : _nome = nome,
        _preco = preco,
        _quantidade = quantidade;

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

  // "quantidade" field.
  PedidoStruct? _quantidade;
  PedidoStruct get quantidade => _quantidade ?? PedidoStruct();
  set quantidade(PedidoStruct? val) => _quantidade = val;
  void updateQuantidade(Function(PedidoStruct) updateFn) =>
      updateFn(_quantidade ??= PedidoStruct());
  bool hasQuantidade() => _quantidade != null;

  static PedidoStruct fromMap(Map<String, dynamic> data) => PedidoStruct(
        nome: data['nome'] as String?,
        preco: data['preco'] as String?,
        quantidade: PedidoStruct.maybeFromMap(data['quantidade']),
      );

  static PedidoStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PedidoStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
        'preco': _preco,
        'quantidade': _quantidade?.toMap(),
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
        'quantidade': serializeParam(
          _quantidade,
          ParamType.DataStruct,
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
        quantidade: deserializeStructParam(
          data['quantidade'],
          ParamType.DataStruct,
          false,
          structBuilder: PedidoStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PedidoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PedidoStruct &&
        nome == other.nome &&
        preco == other.preco &&
        quantidade == other.quantidade;
  }

  @override
  int get hashCode => const ListEquality().hash([nome, preco, quantidade]);
}

PedidoStruct createPedidoStruct({
  String? nome,
  String? preco,
  PedidoStruct? quantidade,
}) =>
    PedidoStruct(
      nome: nome,
      preco: preco,
      quantidade: quantidade ?? PedidoStruct(),
    );
