// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CupomStruct extends BaseStruct {
  CupomStruct({
    List<int>? clienteId,
    List<String>? numCupom,
    List<double>? valorDesconto,
  })  : _clienteId = clienteId,
        _numCupom = numCupom,
        _valorDesconto = valorDesconto;

  // "cliente_id" field.
  List<int>? _clienteId;
  List<int> get clienteId => _clienteId ?? const [];
  set clienteId(List<int>? val) => _clienteId = val;

  void updateClienteId(Function(List<int>) updateFn) {
    updateFn(_clienteId ??= []);
  }

  bool hasClienteId() => _clienteId != null;

  // "num_cupom" field.
  List<String>? _numCupom;
  List<String> get numCupom => _numCupom ?? const [];
  set numCupom(List<String>? val) => _numCupom = val;

  void updateNumCupom(Function(List<String>) updateFn) {
    updateFn(_numCupom ??= []);
  }

  bool hasNumCupom() => _numCupom != null;

  // "valor_desconto" field.
  List<double>? _valorDesconto;
  List<double> get valorDesconto => _valorDesconto ?? const [];
  set valorDesconto(List<double>? val) => _valorDesconto = val;

  void updateValorDesconto(Function(List<double>) updateFn) {
    updateFn(_valorDesconto ??= []);
  }

  bool hasValorDesconto() => _valorDesconto != null;

  static CupomStruct fromMap(Map<String, dynamic> data) => CupomStruct(
        clienteId: getDataList(data['cliente_id']),
        numCupom: getDataList(data['num_cupom']),
        valorDesconto: getDataList(data['valor_desconto']),
      );

  static CupomStruct? maybeFromMap(dynamic data) =>
      data is Map ? CupomStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'cliente_id': _clienteId,
        'num_cupom': _numCupom,
        'valor_desconto': _valorDesconto,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'cliente_id': serializeParam(
          _clienteId,
          ParamType.int,
          isList: true,
        ),
        'num_cupom': serializeParam(
          _numCupom,
          ParamType.String,
          isList: true,
        ),
        'valor_desconto': serializeParam(
          _valorDesconto,
          ParamType.double,
          isList: true,
        ),
      }.withoutNulls;

  static CupomStruct fromSerializableMap(Map<String, dynamic> data) =>
      CupomStruct(
        clienteId: deserializeParam<int>(
          data['cliente_id'],
          ParamType.int,
          true,
        ),
        numCupom: deserializeParam<String>(
          data['num_cupom'],
          ParamType.String,
          true,
        ),
        valorDesconto: deserializeParam<double>(
          data['valor_desconto'],
          ParamType.double,
          true,
        ),
      );

  @override
  String toString() => 'CupomStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CupomStruct &&
        listEquality.equals(clienteId, other.clienteId) &&
        listEquality.equals(numCupom, other.numCupom) &&
        listEquality.equals(valorDesconto, other.valorDesconto);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([clienteId, numCupom, valorDesconto]);
}

CupomStruct createCupomStruct() => CupomStruct();
