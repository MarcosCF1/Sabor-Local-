import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'configuracoes_de_conta_widget.dart' show ConfiguracoesDeContaWidget;
import 'package:flutter/material.dart';

class ConfiguracoesDeContaModel
    extends FlutterFlowModel<ConfiguracoesDeContaWidget> {
  ///  Local state fields for this page.

  String? imagemfoto;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (BuscaDadosFotoClienteid)] action in Configuracoes_de_conta widget.
  ApiCallResponse? apiResultnua;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Backend Call - API (BuscarTodosOsEnderecosPadrao)] action in Row widget.
  ApiCallResponse? apiResulthuk;
  // Stores action output result for [Backend Call - API (BuscaCoordernadasCEPGoogle)] action in Row widget.
  ApiCallResponse? apiResult0mu;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
