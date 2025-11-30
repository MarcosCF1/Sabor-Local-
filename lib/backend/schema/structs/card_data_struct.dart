// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CardDataStruct extends BaseStruct {
  CardDataStruct({
    String? digitos,
    String? ccv,
    String? mes,
    String? ano,
  })  : _digitos = digitos,
        _ccv = ccv,
        _mes = mes,
        _ano = ano;

  // "digitos" field.
  String? _digitos;
  String get digitos => _digitos ?? '';
  set digitos(String? val) => _digitos = val;

  bool hasDigitos() => _digitos != null;

  // "CCV" field.
  String? _ccv;
  String get ccv => _ccv ?? '';
  set ccv(String? val) => _ccv = val;

  bool hasCcv() => _ccv != null;

  // "Mes" field.
  String? _mes;
  String get mes => _mes ?? '';
  set mes(String? val) => _mes = val;

  bool hasMes() => _mes != null;

  // "Ano" field.
  String? _ano;
  String get ano => _ano ?? '';
  set ano(String? val) => _ano = val;

  bool hasAno() => _ano != null;

  static CardDataStruct fromMap(Map<String, dynamic> data) => CardDataStruct(
        digitos: data['digitos'] as String?,
        ccv: data['CCV'] as String?,
        mes: data['Mes'] as String?,
        ano: data['Ano'] as String?,
      );

  static CardDataStruct? maybeFromMap(dynamic data) =>
      data is Map ? CardDataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'digitos': _digitos,
        'CCV': _ccv,
        'Mes': _mes,
        'Ano': _ano,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'digitos': serializeParam(
          _digitos,
          ParamType.String,
        ),
        'CCV': serializeParam(
          _ccv,
          ParamType.String,
        ),
        'Mes': serializeParam(
          _mes,
          ParamType.String,
        ),
        'Ano': serializeParam(
          _ano,
          ParamType.String,
        ),
      }.withoutNulls;

  static CardDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      CardDataStruct(
        digitos: deserializeParam(
          data['digitos'],
          ParamType.String,
          false,
        ),
        ccv: deserializeParam(
          data['CCV'],
          ParamType.String,
          false,
        ),
        mes: deserializeParam(
          data['Mes'],
          ParamType.String,
          false,
        ),
        ano: deserializeParam(
          data['Ano'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CardDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CardDataStruct &&
        digitos == other.digitos &&
        ccv == other.ccv &&
        mes == other.mes &&
        ano == other.ano;
  }

  @override
  int get hashCode => const ListEquality().hash([digitos, ccv, mes, ano]);
}

CardDataStruct createCardDataStruct({
  String? digitos,
  String? ccv,
  String? mes,
  String? ano,
}) =>
    CardDataStruct(
      digitos: digitos,
      ccv: ccv,
      mes: mes,
      ano: ano,
    );
