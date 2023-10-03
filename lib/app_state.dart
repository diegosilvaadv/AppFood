import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
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
      _cliente = prefs
              .getStringList('ff_cliente')
              ?.map((x) {
                try {
                  return ClienteStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _cliente;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<ClienteStruct> _cliente = [];
  List<ClienteStruct> get cliente => _cliente;
  set cliente(List<ClienteStruct> _value) {
    _cliente = _value;
    prefs.setStringList(
        'ff_cliente', _value.map((x) => x.serialize()).toList());
  }

  void addToCliente(ClienteStruct _value) {
    _cliente.add(_value);
    prefs.setStringList(
        'ff_cliente', _cliente.map((x) => x.serialize()).toList());
  }

  void removeFromCliente(ClienteStruct _value) {
    _cliente.remove(_value);
    prefs.setStringList(
        'ff_cliente', _cliente.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCliente(int _index) {
    _cliente.removeAt(_index);
    prefs.setStringList(
        'ff_cliente', _cliente.map((x) => x.serialize()).toList());
  }

  void updateClienteAtIndex(
    int _index,
    ClienteStruct Function(ClienteStruct) updateFn,
  ) {
    _cliente[_index] = updateFn(_cliente[_index]);
    prefs.setStringList(
        'ff_cliente', _cliente.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCliente(int _index, ClienteStruct _value) {
    _cliente.insert(_index, _value);
    prefs.setStringList(
        'ff_cliente', _cliente.map((x) => x.serialize()).toList());
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
