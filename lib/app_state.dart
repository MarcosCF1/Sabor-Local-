import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
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

  int _estadoSenha = 0;
  int get estadoSenha => _estadoSenha;
  set estadoSenha(int value) {
    _estadoSenha = value;
  }

  String _Codigo = '';
  String get Codigo => _Codigo;
  set Codigo(String value) {
    _Codigo = value;
  }

  String _AuthToken = '';
  String get AuthToken => _AuthToken;
  set AuthToken(String value) {
    _AuthToken = value;
  }

  String _CodigoEmailTelefoneVerificacao = '';
  String get CodigoEmailTelefoneVerificacao => _CodigoEmailTelefoneVerificacao;
  set CodigoEmailTelefoneVerificacao(String value) {
    _CodigoEmailTelefoneVerificacao = value;
  }

  int _temporestante = 40;
  int get temporestante => _temporestante;
  set temporestante(int value) {
    _temporestante = value;
  }

  String _Userid = '';
  String get Userid => _Userid;
  set Userid(String value) {
    _Userid = value;
  }

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
  }

  String _papel = '';
  String get papel => _papel;
  set papel(String value) {
    _papel = value;
  }

  String _Nomecompleto = '';
  String get Nomecompleto => _Nomecompleto;
  set Nomecompleto(String value) {
    _Nomecompleto = value;
  }

  String _ClienteID = '';
  String get ClienteID => _ClienteID;
  set ClienteID(String value) {
    _ClienteID = value;
  }

  LatLng? _LocalizacaoEnderecoPrincipal = LatLng(-23.7647232, -46.7122978);
  LatLng? get LocalizacaoEnderecoPrincipal => _LocalizacaoEnderecoPrincipal;
  set LocalizacaoEnderecoPrincipal(LatLng? value) {
    _LocalizacaoEnderecoPrincipal = value;
  }

  String _CEPpadrao = '';
  String get CEPpadrao => _CEPpadrao;
  set CEPpadrao(String value) {
    _CEPpadrao = value;
  }

  /// Authtoken para criar cliente assas.
  String _UserAuthToken = '';
  String get UserAuthToken => _UserAuthToken;
  set UserAuthToken(String value) {
    _UserAuthToken = value;
  }

  String _UserIP = '';
  String get UserIP => _UserIP;
  set UserIP(String value) {
    _UserIP = value;
  }

  int _UserID = 0;
  int get UserID => _UserID;
  set UserID(int value) {
    _UserID = value;
  }

  bool _DropdownHabilitado = false;
  bool get DropdownHabilitado => _DropdownHabilitado;
  set DropdownHabilitado(bool value) {
    _DropdownHabilitado = value;
  }

  String _fotousauario = '';
  String get fotousauario => _fotousauario;
  set fotousauario(String value) {
    _fotousauario = value;
  }

  List<CardDataStruct> _CardData = [];
  List<CardDataStruct> get CardData => _CardData;
  set CardData(List<CardDataStruct> value) {
    _CardData = value;
  }

  void addToCardData(CardDataStruct value) {
    CardData.add(value);
  }

  void removeFromCardData(CardDataStruct value) {
    CardData.remove(value);
  }

  void removeAtIndexFromCardData(int index) {
    CardData.removeAt(index);
  }

  void updateCardDataAtIndex(
    int index,
    CardDataStruct Function(CardDataStruct) updateFn,
  ) {
    CardData[index] = updateFn(_CardData[index]);
  }

  void insertAtIndexInCardData(int index, CardDataStruct value) {
    CardData.insert(index, value);
  }
}
