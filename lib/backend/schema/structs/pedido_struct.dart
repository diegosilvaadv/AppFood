// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PedidoStruct extends BaseStruct {
  PedidoStruct({
    String? nome,
    double? preco,
    double? quantidade,
    String? img,
    double? id,
    List<PedidoStruct>? namelist,
  })  : _nome = nome,
        _preco = preco,
        _quantidade = quantidade,
        _img = img,
        _id = id,
        _namelist = namelist;

  // "Nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;
  bool hasNome() => _nome != null;

  // "Preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  set preco(double? val) => _preco = val;
  void incrementPreco(double amount) => _preco = preco + amount;
  bool hasPreco() => _preco != null;

  // "quantidade" field.
  double? _quantidade;
  double get quantidade => _quantidade ?? 0.0;
  set quantidade(double? val) => _quantidade = val;
  void incrementQuantidade(double amount) => _quantidade = quantidade + amount;
  bool hasQuantidade() => _quantidade != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;
  bool hasImg() => _img != null;

  // "id" field.
  double? _id;
  double get id => _id ?? 0.0;
  set id(double? val) => _id = val;
  void incrementId(double amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "namelist" field.
  List<PedidoStruct>? _namelist;
  List<PedidoStruct> get namelist => _namelist ?? const [];
  set namelist(List<PedidoStruct>? val) => _namelist = val;
  void updateNamelist(Function(List<PedidoStruct>) updateFn) =>
      updateFn(_namelist ??= []);
  bool hasNamelist() => _namelist != null;

  static PedidoStruct fromMap(Map<String, dynamic> data) => PedidoStruct(
        nome: data['Nome'] as String?,
        preco: castToType<double>(data['Preco']),
        quantidade: castToType<double>(data['quantidade']),
        img: data['img'] as String?,
        id: castToType<double>(data['id']),
        namelist: getStructList(
          data['namelist'],
          PedidoStruct.fromMap,
        ),
      );

  static PedidoStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PedidoStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Nome': _nome,
        'Preco': _preco,
        'quantidade': _quantidade,
        'img': _img,
        'id': _id,
        'namelist': _namelist?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'Preco': serializeParam(
          _preco,
          ParamType.double,
        ),
        'quantidade': serializeParam(
          _quantidade,
          ParamType.double,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.double,
        ),
        'namelist': serializeParam(
          _namelist,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static PedidoStruct fromSerializableMap(Map<String, dynamic> data) =>
      PedidoStruct(
        nome: deserializeParam(
          data['Nome'],
          ParamType.String,
          false,
        ),
        preco: deserializeParam(
          data['Preco'],
          ParamType.double,
          false,
        ),
        quantidade: deserializeParam(
          data['quantidade'],
          ParamType.double,
          false,
        ),
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.double,
          false,
        ),
        namelist: deserializeStructParam<PedidoStruct>(
          data['namelist'],
          ParamType.DataStruct,
          true,
          structBuilder: PedidoStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PedidoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PedidoStruct &&
        nome == other.nome &&
        preco == other.preco &&
        quantidade == other.quantidade &&
        img == other.img &&
        id == other.id &&
        listEquality.equals(namelist, other.namelist);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([nome, preco, quantidade, img, id, namelist]);
}

PedidoStruct createPedidoStruct({
  String? nome,
  double? preco,
  double? quantidade,
  String? img,
  double? id,
}) =>
    PedidoStruct(
      nome: nome,
      preco: preco,
      quantidade: quantidade,
      img: img,
      id: id,
    );
