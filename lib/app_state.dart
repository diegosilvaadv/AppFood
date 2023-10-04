import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _Pedido = prefs
              .getStringList('ff_Pedido')
              ?.map((x) {
                try {
                  return PedidoStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _Pedido;
    });
    _safeInit(() {
      _cardNumero = prefs.getDouble('ff_cardNumero') ?? _cardNumero;
    });
    _safeInit(() {
      _Soma = prefs.getDouble('ff_Soma') ?? _Soma;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<PedidoStruct> _Pedido = [];
  List<PedidoStruct> get Pedido => _Pedido;
  set Pedido(List<PedidoStruct> _value) {
    _Pedido = _value;
    prefs.setStringList('ff_Pedido', _value.map((x) => x.serialize()).toList());
  }

  void addToPedido(PedidoStruct _value) {
    _Pedido.add(_value);
    prefs.setStringList(
        'ff_Pedido', _Pedido.map((x) => x.serialize()).toList());
  }

  void removeFromPedido(PedidoStruct _value) {
    _Pedido.remove(_value);
    prefs.setStringList(
        'ff_Pedido', _Pedido.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromPedido(int _index) {
    _Pedido.removeAt(_index);
    prefs.setStringList(
        'ff_Pedido', _Pedido.map((x) => x.serialize()).toList());
  }

  void updatePedidoAtIndex(
    int _index,
    PedidoStruct Function(PedidoStruct) updateFn,
  ) {
    _Pedido[_index] = updateFn(_Pedido[_index]);
    prefs.setStringList(
        'ff_Pedido', _Pedido.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInPedido(int _index, PedidoStruct _value) {
    _Pedido.insert(_index, _value);
    prefs.setStringList(
        'ff_Pedido', _Pedido.map((x) => x.serialize()).toList());
  }

  double _cardNumero = 0.0;
  double get cardNumero => _cardNumero;
  set cardNumero(double _value) {
    _cardNumero = _value;
    prefs.setDouble('ff_cardNumero', _value);
  }

  double _Soma = 0.0;
  double get Soma => _Soma;
  set Soma(double _value) {
    _Soma = _value;
    prefs.setDouble('ff_Soma', _value);
  }

  int _contador = -1;
  int get contador => _contador;
  set contador(int _value) {
    _contador = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
