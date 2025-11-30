// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DadosPratosStruct extends BaseStruct {
  DadosPratosStruct({
    int? id,
    int? createdAt,
    String? nome,
    String? descricao,
    int? qntDisp,
    double? preco,
    bool? precisaProduzir,
    List<String>? urlImagem,
  })  : _id = id,
        _createdAt = createdAt,
        _nome = nome,
        _descricao = descricao,
        _qntDisp = qntDisp,
        _preco = preco,
        _precisaProduzir = precisaProduzir,
        _urlImagem = urlImagem;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "created_at" field.
  int? _createdAt;
  int get createdAt => _createdAt ?? 0;
  set createdAt(int? val) => _createdAt = val;

  void incrementCreatedAt(int amount) => createdAt = createdAt + amount;

  bool hasCreatedAt() => _createdAt != null;

  // "NOME" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "DESCRICAO" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  // "QNT_DISP" field.
  int? _qntDisp;
  int get qntDisp => _qntDisp ?? 0;
  set qntDisp(int? val) => _qntDisp = val;

  void incrementQntDisp(int amount) => qntDisp = qntDisp + amount;

  bool hasQntDisp() => _qntDisp != null;

  // "PRECO" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  set preco(double? val) => _preco = val;

  void incrementPreco(double amount) => preco = preco + amount;

  bool hasPreco() => _preco != null;

  // "PRECISA_PRODUZIR" field.
  bool? _precisaProduzir;
  bool get precisaProduzir => _precisaProduzir ?? false;
  set precisaProduzir(bool? val) => _precisaProduzir = val;

  bool hasPrecisaProduzir() => _precisaProduzir != null;

  // "URL_IMAGEM" field.
  List<String>? _urlImagem;
  List<String> get urlImagem => _urlImagem ?? const [];
  set urlImagem(List<String>? val) => _urlImagem = val;

  void updateUrlImagem(Function(List<String>) updateFn) {
    updateFn(_urlImagem ??= []);
  }

  bool hasUrlImagem() => _urlImagem != null;

  static DadosPratosStruct fromMap(Map<String, dynamic> data) =>
      DadosPratosStruct(
        id: castToType<int>(data['id']),
        createdAt: castToType<int>(data['created_at']),
        nome: data['NOME'] as String?,
        descricao: data['DESCRICAO'] as String?,
        qntDisp: castToType<int>(data['QNT_DISP']),
        preco: castToType<double>(data['PRECO']),
        precisaProduzir: data['PRECISA_PRODUZIR'] as bool?,
        urlImagem: getDataList(data['URL_IMAGEM']),
      );

  static DadosPratosStruct? maybeFromMap(dynamic data) => data is Map
      ? DadosPratosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'NOME': _nome,
        'DESCRICAO': _descricao,
        'QNT_DISP': _qntDisp,
        'PRECO': _preco,
        'PRECISA_PRODUZIR': _precisaProduzir,
        'URL_IMAGEM': _urlImagem,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.int,
        ),
        'NOME': serializeParam(
          _nome,
          ParamType.String,
        ),
        'DESCRICAO': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'QNT_DISP': serializeParam(
          _qntDisp,
          ParamType.int,
        ),
        'PRECO': serializeParam(
          _preco,
          ParamType.double,
        ),
        'PRECISA_PRODUZIR': serializeParam(
          _precisaProduzir,
          ParamType.bool,
        ),
        'URL_IMAGEM': serializeParam(
          _urlImagem,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static DadosPratosStruct fromSerializableMap(Map<String, dynamic> data) =>
      DadosPratosStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.int,
          false,
        ),
        nome: deserializeParam(
          data['NOME'],
          ParamType.String,
          false,
        ),
        descricao: deserializeParam(
          data['DESCRICAO'],
          ParamType.String,
          false,
        ),
        qntDisp: deserializeParam(
          data['QNT_DISP'],
          ParamType.int,
          false,
        ),
        preco: deserializeParam(
          data['PRECO'],
          ParamType.double,
          false,
        ),
        precisaProduzir: deserializeParam(
          data['PRECISA_PRODUZIR'],
          ParamType.bool,
          false,
        ),
        urlImagem: deserializeParam<String>(
          data['URL_IMAGEM'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'DadosPratosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DadosPratosStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        nome == other.nome &&
        descricao == other.descricao &&
        qntDisp == other.qntDisp &&
        preco == other.preco &&
        precisaProduzir == other.precisaProduzir &&
        listEquality.equals(urlImagem, other.urlImagem);
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        nome,
        descricao,
        qntDisp,
        preco,
        precisaProduzir,
        urlImagem
      ]);
}

DadosPratosStruct createDadosPratosStruct({
  int? id,
  int? createdAt,
  String? nome,
  String? descricao,
  int? qntDisp,
  double? preco,
  bool? precisaProduzir,
}) =>
    DadosPratosStruct(
      id: id,
      createdAt: createdAt,
      nome: nome,
      descricao: descricao,
      qntDisp: qntDisp,
      preco: preco,
      precisaProduzir: precisaProduzir,
    );
