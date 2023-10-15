import 'package:flutter/material.dart';
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

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _Rua = '';
  String get Rua => _Rua;
  set Rua(String _value) {
    _Rua = _value;
  }

  String _Cidade = '';
  String get Cidade => _Cidade;
  set Cidade(String _value) {
    _Cidade = _value;
  }

  String _Estado = '';
  String get Estado => _Estado;
  set Estado(String _value) {
    _Estado = _value;
  }

  String _Bairro = '';
  String get Bairro => _Bairro;
  set Bairro(String _value) {
    _Bairro = _value;
  }

  bool _CepResult = false;
  bool get CepResult => _CepResult;
  set CepResult(bool _value) {
    _CepResult = _value;
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
