// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClienteStruct extends BaseStruct {
  ClienteStruct({
    String? nome,
    int? nMesa,
  })  : _nome = nome,
        _nMesa = nMesa;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;
  bool hasNome() => _nome != null;

  // "n_mesa" field.
  int? _nMesa;
  int get nMesa => _nMesa ?? 0;
  set nMesa(int? val) => _nMesa = val;
  void incrementNMesa(int amount) => _nMesa = nMesa + amount;
  bool hasNMesa() => _nMesa != null;

  static ClienteStruct fromMap(Map<String, dynamic> data) => ClienteStruct(
        nome: data['nome'] as String?,
        nMesa: castToType<int>(data['n_mesa']),
      );

  static ClienteStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ClienteStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
        'n_mesa': _nMesa,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'n_mesa': serializeParam(
          _nMesa,
          ParamType.int,
        ),
      }.withoutNulls;

  static ClienteStruct fromSerializableMap(Map<String, dynamic> data) =>
      ClienteStruct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        nMesa: deserializeParam(
          data['n_mesa'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ClienteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ClienteStruct && nome == other.nome && nMesa == other.nMesa;
  }

  @override
  int get hashCode => const ListEquality().hash([nome, nMesa]);
}

ClienteStruct createClienteStruct({
  String? nome,
  int? nMesa,
}) =>
    ClienteStruct(
      nome: nome,
      nMesa: nMesa,
    );
