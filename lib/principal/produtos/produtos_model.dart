import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'produtos_widget.dart' show ProdutosWidget;
import 'package:flutter/material.dart';

class ProdutosModel extends FlutterFlowModel<ProdutosWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (DeletarProdutosCarrinhoClienteIDProdutoID)] action in Icon widget.
  ApiCallResponse? apiResultzkw;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // Stores action output result for [Backend Call - API (AtualizaQuantidadeCarrinhoClienteIDProdutoID)] action in CountController widget.
  ApiCallResponse? quantiadade;
  // Stores action output result for [Backend Call - API (subtotalCarrinho)] action in CountController widget.
  ApiCallResponse? apiResultzfg;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
