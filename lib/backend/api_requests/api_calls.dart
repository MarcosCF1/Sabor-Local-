import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_commons/api_requests/api_manager.dart';


export 'package:ff_commons/api_requests/api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ApiloginCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'APILOGIN',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:xFSRIWL-/auth/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? authToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.authToken''',
      ));
}

class ApicadCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? phonenumber = '',
    String? password = '',
    String? cpf = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(name)}",
  "email": "${escapeStringForJson(email)}",
  "phonenumber": "${escapeStringForJson(phonenumber)}",
  "cpf": "${escapeStringForJson(cpf)}",
  "password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'APICAD',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:xFSRIWL-/auth/signup',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? authToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.authToken''',
      ));
}

class BuscaCepCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'buscaCep',
      apiUrl: 'https://viacep.com.br/ws/${cep}/json/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? logradouro(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.logradouro''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bairro''',
      ));
  static String? uf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uf''',
      ));
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.localidade''',
      ));
}

class SendGridEmailVerificacaoCall {
  static Future<ApiCallResponse> call({
    String? from = 'kaique.cunha@aluno.faculdadeimpacta.com.br',
    String? to = '',
    String? subject = 'Código de verificação Sabor Local',
    String? content = '',
  }) async {
    final ffApiRequestBody = '''
{
  "from": "${escapeStringForJson(from)}",
  "to": "${escapeStringForJson(to)}",
  "subject": "${escapeStringForJson(subject)}",
  "content": "${escapeStringForJson(content)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendGridEmailVerificacao',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:xFSRIWL-/codigoemail',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AuthMeCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'AuthMe',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:xFSRIWL-/auth/me',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? idUser(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? nomeUser(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  static String? emailUser(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  static int? papelUser(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.papel_id''',
      ));
}

class CadastroEnderecoCall {
  static Future<ApiCallResponse> call({
    String? userID = '',
    String? cep = '',
    String? uf = '',
    String? cidade = '',
    String? logradouro = '',
    String? numero = '',
    String? complemento = '',
    String? referencia = '',
    String? bairro = '',
    bool? padrao,
  }) async {
    final ffApiRequestBody = '''
{
  "User_id": "${escapeStringForJson(userID)}",
  "cep": "${escapeStringForJson(cep)}",
  "uf": "${escapeStringForJson(uf)}",
  "cidade": "${escapeStringForJson(cidade)}",
  "logradouro": "${escapeStringForJson(logradouro)}",
  "numero": "${escapeStringForJson(numero)}",
  "complemento": "${escapeStringForJson(complemento)}",
  "referencia": "${escapeStringForJson(referencia)}",
  "bairro": "${escapeStringForJson(bairro)}",
  "padrao": "${padrao}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CadastroEndereco',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:uZw9Ny5W/CadastroEnderecoCep',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VerificacaoExistenciaEmailRecuperacaoSenhaCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'VerificacaoExistenciaEmailRecuperacaoSenha',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:uZw9Ny5W/RecuperacaoSenha',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'email': email,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic existe(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class AtualizaoSenhaCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? senha = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "senha": "${escapeStringForJson(senha)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Atualizao Senha',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:uZw9Ny5W/AtualizacaoSenha',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? mensagem(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class BuscaClienteIDCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BuscaClienteID',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:uZw9Ny5W/ClienteIDFlutterFlow',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'user_id': userId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? clienteID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class BuscarTodosOsEnderecosCall {
  static Future<ApiCallResponse> call({
    String? clienteID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BuscarTodosOsEnderecos',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:uZw9Ny5W/ProcuraEndereco',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'ClienteID': clienteID,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? listaDeEnderecos(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class GetinfopedidoCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getinfopedido',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:uZw9Ny5W/get_url_prato',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? idprato(dynamic response) => (getJsonField(
        response,
        r'''$[*].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? caprato(dynamic response) => (getJsonField(
        response,
        r'''$[*].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? nomeprato(dynamic response) => (getJsonField(
        response,
        r'''$[*].NOME''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static String? descprato(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[*].DESCRICAO''',
      ));
  static List<int>? qtdispprato(dynamic response) => (getJsonField(
        response,
        r'''$[*].QNT_DISP''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static double? precoprato(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$[*].PRECO''',
      ));
  static List<bool>? ppprato(dynamic response) => (getJsonField(
        response,
        r'''$[*].PRECISA_PRODUZIR''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List<String>? urlprato(dynamic response) => (getJsonField(
        response,
        r'''$[*].URL_IMAGEM''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? imagensprato(dynamic response) => (getJsonField(
        response,
        r'''$[*].Imagem_pratos.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static dynamic todosprodutos(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class BuscaCoordernadasCEPGoogleCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BuscaCoordernadasCEPGoogle',
      apiUrl:
          'https://maps.googleapis.com/maps/api/geocode/json?address=${cep}&key=AIzaSyDnXGmuCPEVWo2Fqty25qj3foaWhHPLZis',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'address': cep,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static double? latitude(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.results[:].geometry.location.lat''',
      ));
  static double? longitude(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.results[:].geometry.location.lng''',
      ));
  static List? latitudeLongitude(dynamic response) => getJsonField(
        response,
        r'''$.results[:].geometry.viewport.northeast''',
        true,
      ) as List?;
}

class BuscarTodosOsEnderecosPadraoCall {
  static Future<ApiCallResponse> call({
    String? clienteID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BuscarTodosOsEnderecosPadrao',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:uZw9Ny5W/ProcuraEnderecosPadrao',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'ClienteID': clienteID,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? cep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.CEP_CODE''',
      ));
  static int? enderecoID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class AtualizacaoEnderecoCall {
  static Future<ApiCallResponse> call({
    int? id,
    String? cep = '',
    String? logradouro = '',
    String? numero = '',
    String? complemento = '',
    String? referencia = '',
    String? bairro = '',
    bool? padrao,
    String? clienteID = '',
  }) async {
    final ffApiRequestBody = '''
{
  "id": ${id},
  "CLIENTE_ID": "${escapeStringForJson(clienteID)}",
  "LOGRADOURO": "${escapeStringForJson(logradouro)}",
  "NUMERO": "${escapeStringForJson(numero)}",
  "COMPLEMENTO": "${escapeStringForJson(complemento)}",
  "REFERENCIA": "${escapeStringForJson(referencia)}",
  "BAIRRO": "${escapeStringForJson(bairro)}",
  "PADRAO": ${padrao},
  "CEP": "${escapeStringForJson(cep)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AtualizacaoEndereco',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:uZw9Ny5W/AtualizacaoEndereco',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? mensagem(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class DeletrarEnderecoCall {
  static Future<ApiCallResponse> call({
    int? idEndereco,
    String? clienteId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'DeletrarEndereco',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:uZw9Ny5W/DeletarEndereco',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {
        'endereco_id': idEndereco,
        'cliente_id': clienteId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? mensagem(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static bool? resultado(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
}

class BuscarProdutosCarrinhoClienteIDCall {
  static Future<ApiCallResponse> call({
    String? clienteId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BuscarProdutosCarrinhoClienteID',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:uZw9Ny5W/PegarProdutosCarrinhoClienteID',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'cliente_ID': clienteId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? todosOsProdutos(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class DeletarProdutosCarrinhoClienteIDProdutoIDCall {
  static Future<ApiCallResponse> call({
    String? clienteID = '',
    String? produtoID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'DeletarProdutosCarrinhoClienteIDProdutoID',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:uZw9Ny5W/DeletarProdutosCarrinhoClienteID',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {
        'ProdutoID': produtoID,
        'ClienteID': clienteID,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AtualizaQuantidadeCarrinhoClienteIDProdutoIDCall {
  static Future<ApiCallResponse> call({
    int? quantidade,
    String? clienteID = '',
    String? produtoID = '',
  }) async {
    final ffApiRequestBody = '''
{
  "CLIENTE_ID": ${escapeStringForJson(clienteID)},
  "PRODUTO_ID": ${escapeStringForJson(produtoID)},
  "QUANTIDADE": ${quantidade}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AtualizaQuantidadeCarrinhoClienteIDProdutoID',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:uZw9Ny5W/AtualizacaoQuantidadeCarrinho',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetClientIPCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetClientIP',
      apiUrl: 'https://api.ipify.org?format=json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? ip(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ip''',
      ));
}

class CriapedidocarrinhoCall {
  static Future<ApiCallResponse> call({
    String? clienteId = '',
    int? produtoId,
    int? quantidade = 1,
  }) async {
    final ffApiRequestBody = '''
{
  "CLIENTE_ID": ${escapeStringForJson(clienteId)},
  "PRODUTO_ID": ${produtoId},
  "QUANTIDADE": ${quantidade}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Criapedidocarrinho',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:uZw9Ny5W/carrinhocliente',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RecomendacaoPratosClienteBuscaCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'RecomendacaoPratosClienteBusca',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:uZw9Ny5W/RecomendacaoPratosClienteBusca',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? todosOsProdutos(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class SubtotalCarrinhoCall {
  static Future<ApiCallResponse> call({
    String? idCliente = 'null',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'subtotalCarrinho',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:uZw9Ny5W/subtotalcarrinho',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'cliente_id': idCliente,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static double? subtotal(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.item''',
      ));
}

class RecomendacaoComidasClienteBuscaCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'RecomendacaoComidasClienteBusca',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:uZw9Ny5W/RecomendacaoComidasClienteBusca',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic todasAsComidas(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class RecomendacaoBebidasClienteBuscaCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'RecomendacaoBebidasClienteBusca',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:uZw9Ny5W/RecomendacaoBebidasClienteBusca',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic todasAsBebidas(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class CriarClienteAsaasCall {
  static Future<ApiCallResponse> call({
    String? authtoken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "authtoken": "${escapeStringForJson(authtoken)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CriarClienteAsaas',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:2c2W5SMv/criarclienteassas',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? userAuthToken(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.result1.request.params.authtoken''',
      ));
}

class EnviaCupomCall {
  static Future<ApiCallResponse> call({
    String? clienteId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "cliente_id": "${escapeStringForJson(clienteId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'EnviaCupom',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:uZw9Ny5W/enviacupom',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? clienteid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.cliente_id''',
      ));
}

class TokenCardCall {
  static Future<ApiCallResponse> call({
    int? userID,
    String? numberDoCartao = '',
    String? mesDeExpiracao = '',
    String? anoDeExpiracao = '',
    String? ccv = '',
    String? remoteIP = '',
    String? nomeNoCartao = '',
  }) async {
    final ffApiRequestBody = '''
{
  "UserID": ${userID},
  "Number_do_cartao": "${escapeStringForJson(numberDoCartao)}",
  "Mes_de_expiracao": "${escapeStringForJson(mesDeExpiracao)}",
  "Ano_de_expiracao": "${escapeStringForJson(anoDeExpiracao)}",
  "CCV": "${escapeStringForJson(ccv)}",
  "RemoteIP": "${escapeStringForJson(remoteIP)}",
  "Nome_no_cartao": "${escapeStringForJson(nomeNoCartao)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'TokenCard',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:2c2W5SMv/tokenizacao_card',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetinfocupomCall {
  static Future<ApiCallResponse> call({
    int? clienteId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getinfocupom',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:uZw9Ny5W/pegacupom',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'cliente_id': clienteId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UploadFotoUsuarioCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? imagem,
    String? clienteId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'UploadFotoUsuario',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:uZw9Ny5W/Teste',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {
        'content': imagem,
        'cliente_id': clienteId,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PegacupomCall {
  static Future<ApiCallResponse> call({
    String? clienteid = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Pegacupom',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:uZw9Ny5W/pegacupom',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'cliente_id': clienteid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? nomecupom(dynamic response) => (getJsonField(
        response,
        r'''$[:].Nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? datalimite(dynamic response) => getJsonField(
        response,
        r'''$[:].data_limite''',
        true,
      ) as List?;
  static List<double>? valordesconto(dynamic response) => (getJsonField(
        response,
        r'''$[:].valor_desconto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<String>? codcupom(dynamic response) => (getJsonField(
        response,
        r'''$[:].num_cupom''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? idcupom(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class BuscaDadosFotoClienteidCall {
  static Future<ApiCallResponse> call({
    String? clienteId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BuscaDadosFotoClienteid',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:uZw9Ny5W/BuscaDadosFotoCliente_id',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'cliente_id': clienteId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? celular(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.CELULAR''',
      ));
  static String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.NOME''',
      ));
  static String? fotoPerfil(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.FOTOPERFIL.url''',
      ));
}

class AtualizaInformacaoPerfilClienteCall {
  static Future<ApiCallResponse> call({
    String? clienteId = '',
    String? nome = '',
    String? telefone = '',
  }) async {
    final ffApiRequestBody = '''
{
  "cliente_id": "${escapeStringForJson(clienteId)}",
  "celular": "${escapeStringForJson(telefone)}",
  "nome": "${escapeStringForJson(nome)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AtualizaInformacaoPerfilCliente',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:uZw9Ny5W/update_cliente',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CriarPedidoASSASCall {
  static Future<ApiCallResponse> call({
    String? clientId = '',
    double? preco,
  }) async {
    final ffApiRequestBody = '''
{
  "cliente_id": "${escapeStringForJson(clientId)}",
  "preco": ${preco}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CriarPedidoASSAS',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:uZw9Ny5W/create_pedido',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? codigoEntrega(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.COD_ENTREGA''',
      ));
}

class TesteCall {
  static Future<ApiCallResponse> call({
    String? clienteId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": "${escapeStringForJson(clienteId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Teste',
      apiUrl: 'https://n8n2.marcosfc.dev/webhook/sugestãoPratos',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? todosOsProdutos(dynamic response) => (getJsonField(
        response,
        r'''$''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class RecomendacaoPratosClienteBuscaNNCall {
  static Future<ApiCallResponse> call({
    List<int>? produtosList,
  }) async {
    final produtos = _serializeList(produtosList);

    return ApiManager.instance.makeApiCall(
      callName: 'RecomendacaoPratosClienteBuscaNN',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:uZw9Ny5W/products_batch_details',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'produtos': produtos,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic todosOsProdutos(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class BuscaProdutoNomeCall {
  static Future<ApiCallResponse> call({
    String? nome = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BuscaProdutoNome',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:uZw9Ny5W/BuscaProdutoNome',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'nome': nome,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic dadosProdutos(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class DadosCartaoCall {
  static Future<ApiCallResponse> call({
    String? clienteId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'DadosCartao',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:2c2W5SMv/DadosCartao',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'Cliente_id': clienteId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? digitos(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cdados[:].digitos''',
      ));
  static String? brand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cdados[:].Brand''',
      ));
  static String? ccv(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cdados[:].CCV''',
      ));
  static String? mes(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cdados[:].Mes''',
      ));
  static String? ano(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cdados[:].Ano''',
      ));
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
