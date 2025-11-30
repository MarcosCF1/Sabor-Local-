import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'paginaprato_widget.dart' show PaginapratoWidget;
import 'package:flutter/material.dart';

class PaginapratoModel extends FlutterFlowModel<PaginapratoWidget> {
  ///  Local state fields for this page.

  int? indexprato = 0;

  int qtdprato = 1;

  int? idproduto;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getinfopedido)] action in paginaprato widget.
  ApiCallResponse? resultgetinfopratos;
  // State field(s) for Observacao widget.
  FocusNode? observacaoFocusNode;
  TextEditingController? observacaoTextController;
  String? Function(BuildContext, String?)? observacaoTextControllerValidator;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // Stores action output result for [Backend Call - API (Criapedidocarrinho)] action in Button widget.
  ApiCallResponse? testecarrinho;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    observacaoFocusNode?.dispose();
    observacaoTextController?.dispose();
  }
}
