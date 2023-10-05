// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InfoClienteStruct extends BaseStruct {
  InfoClienteStruct({
    String? nomeCliente,
  }) : _nomeCliente = nomeCliente;

  // "nome_cliente" field.
  String? _nomeCliente;
  String get nomeCliente => _nomeCliente ?? '';
  set nomeCliente(String? val) => _nomeCliente = val;
  bool hasNomeCliente() => _nomeCliente != null;

  static InfoClienteStruct fromMap(Map<String, dynamic> data) =>
      InfoClienteStruct(
        nomeCliente: data['nome_cliente'] as String?,
      );

  static InfoClienteStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? InfoClienteStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'nome_cliente': _nomeCliente,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome_cliente': serializeParam(
          _nomeCliente,
          ParamType.String,
        ),
      }.withoutNulls;

  static InfoClienteStruct fromSerializableMap(Map<String, dynamic> data) =>
      InfoClienteStruct(
        nomeCliente: deserializeParam(
          data['nome_cliente'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'InfoClienteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is InfoClienteStruct && nomeCliente == other.nomeCliente;
  }

  @override
  int get hashCode => const ListEquality().hash([nomeCliente]);
}

InfoClienteStruct createInfoClienteStruct({
  String? nomeCliente,
}) =>
    InfoClienteStruct(
      nomeCliente: nomeCliente,
    );
