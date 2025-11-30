// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DescricaopratoStruct extends BaseStruct {
  DescricaopratoStruct({
    String? descdoprato,
  }) : _descdoprato = descdoprato;

  // "descdoprato" field.
  String? _descdoprato;
  String get descdoprato => _descdoprato ?? '';
  set descdoprato(String? val) => _descdoprato = val;

  bool hasDescdoprato() => _descdoprato != null;

  static DescricaopratoStruct fromMap(Map<String, dynamic> data) =>
      DescricaopratoStruct(
        descdoprato: data['descdoprato'] as String?,
      );

  static DescricaopratoStruct? maybeFromMap(dynamic data) => data is Map
      ? DescricaopratoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'descdoprato': _descdoprato,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'descdoprato': serializeParam(
          _descdoprato,
          ParamType.String,
        ),
      }.withoutNulls;

  static DescricaopratoStruct fromSerializableMap(Map<String, dynamic> data) =>
      DescricaopratoStruct(
        descdoprato: deserializeParam(
          data['descdoprato'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DescricaopratoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DescricaopratoStruct && descdoprato == other.descdoprato;
  }

  @override
  int get hashCode => const ListEquality().hash([descdoprato]);
}

DescricaopratoStruct createDescricaopratoStruct({
  String? descdoprato,
}) =>
    DescricaopratoStruct(
      descdoprato: descdoprato,
    );
