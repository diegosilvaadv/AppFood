// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdensPedidosStruct extends BaseStruct {
  OrdensPedidosStruct({
    String? nomeCliente,
    String? pedido,
    String? nPedido,
    double? valor,
    double? quantidade,
    String? formaPag,
    String? mesa,
    String? img,
    DateTime? data,
  })  : _nomeCliente = nomeCliente,
        _pedido = pedido,
        _nPedido = nPedido,
        _valor = valor,
        _quantidade = quantidade,
        _formaPag = formaPag,
        _mesa = mesa,
        _img = img,
        _data = data;

  // "Nome_Cliente" field.
  String? _nomeCliente;
  String get nomeCliente => _nomeCliente ?? '';
  set nomeCliente(String? val) => _nomeCliente = val;
  bool hasNomeCliente() => _nomeCliente != null;

  // "Pedido" field.
  String? _pedido;
  String get pedido => _pedido ?? '';
  set pedido(String? val) => _pedido = val;
  bool hasPedido() => _pedido != null;

  // "n_pedido" field.
  String? _nPedido;
  String get nPedido => _nPedido ?? '';
  set nPedido(String? val) => _nPedido = val;
  bool hasNPedido() => _nPedido != null;

  // "Valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  set valor(double? val) => _valor = val;
  void incrementValor(double amount) => _valor = valor + amount;
  bool hasValor() => _valor != null;

  // "Quantidade" field.
  double? _quantidade;
  double get quantidade => _quantidade ?? 0.0;
  set quantidade(double? val) => _quantidade = val;
  void incrementQuantidade(double amount) => _quantidade = quantidade + amount;
  bool hasQuantidade() => _quantidade != null;

  // "Forma_pag" field.
  String? _formaPag;
  String get formaPag => _formaPag ?? '';
  set formaPag(String? val) => _formaPag = val;
  bool hasFormaPag() => _formaPag != null;

  // "Mesa" field.
  String? _mesa;
  String get mesa => _mesa ?? '';
  set mesa(String? val) => _mesa = val;
  bool hasMesa() => _mesa != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;
  bool hasImg() => _img != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  set data(DateTime? val) => _data = val;
  bool hasData() => _data != null;

  static OrdensPedidosStruct fromMap(Map<String, dynamic> data) =>
      OrdensPedidosStruct(
        nomeCliente: data['Nome_Cliente'] as String?,
        pedido: data['Pedido'] as String?,
        nPedido: data['n_pedido'] as String?,
        valor: castToType<double>(data['Valor']),
        quantidade: castToType<double>(data['Quantidade']),
        formaPag: data['Forma_pag'] as String?,
        mesa: data['Mesa'] as String?,
        img: data['img'] as String?,
        data: data['data'] as DateTime?,
      );

  static OrdensPedidosStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? OrdensPedidosStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Nome_Cliente': _nomeCliente,
        'Pedido': _pedido,
        'n_pedido': _nPedido,
        'Valor': _valor,
        'Quantidade': _quantidade,
        'Forma_pag': _formaPag,
        'Mesa': _mesa,
        'img': _img,
        'data': _data,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Nome_Cliente': serializeParam(
          _nomeCliente,
          ParamType.String,
        ),
        'Pedido': serializeParam(
          _pedido,
          ParamType.String,
        ),
        'n_pedido': serializeParam(
          _nPedido,
          ParamType.String,
        ),
        'Valor': serializeParam(
          _valor,
          ParamType.double,
        ),
        'Quantidade': serializeParam(
          _quantidade,
          ParamType.double,
        ),
        'Forma_pag': serializeParam(
          _formaPag,
          ParamType.String,
        ),
        'Mesa': serializeParam(
          _mesa,
          ParamType.String,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
        'data': serializeParam(
          _data,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static OrdensPedidosStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrdensPedidosStruct(
        nomeCliente: deserializeParam(
          data['Nome_Cliente'],
          ParamType.String,
          false,
        ),
        pedido: deserializeParam(
          data['Pedido'],
          ParamType.String,
          false,
        ),
        nPedido: deserializeParam(
          data['n_pedido'],
          ParamType.String,
          false,
        ),
        valor: deserializeParam(
          data['Valor'],
          ParamType.double,
          false,
        ),
        quantidade: deserializeParam(
          data['Quantidade'],
          ParamType.double,
          false,
        ),
        formaPag: deserializeParam(
          data['Forma_pag'],
          ParamType.String,
          false,
        ),
        mesa: deserializeParam(
          data['Mesa'],
          ParamType.String,
          false,
        ),
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
        data: deserializeParam(
          data['data'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'OrdensPedidosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrdensPedidosStruct &&
        nomeCliente == other.nomeCliente &&
        pedido == other.pedido &&
        nPedido == other.nPedido &&
        valor == other.valor &&
        quantidade == other.quantidade &&
        formaPag == other.formaPag &&
        mesa == other.mesa &&
        img == other.img &&
        data == other.data;
  }

  @override
  int get hashCode => const ListEquality().hash([
        nomeCliente,
        pedido,
        nPedido,
        valor,
        quantidade,
        formaPag,
        mesa,
        img,
        data
      ]);
}

OrdensPedidosStruct createOrdensPedidosStruct({
  String? nomeCliente,
  String? pedido,
  String? nPedido,
  double? valor,
  double? quantidade,
  String? formaPag,
  String? mesa,
  String? img,
  DateTime? data,
}) =>
    OrdensPedidosStruct(
      nomeCliente: nomeCliente,
      pedido: pedido,
      nPedido: nPedido,
      valor: valor,
      quantidade: quantidade,
      formaPag: formaPag,
      mesa: mesa,
      img: img,
      data: data,
    );
