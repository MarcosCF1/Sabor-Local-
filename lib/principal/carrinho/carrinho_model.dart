import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'carrinho_widget.dart' show CarrinhoWidget;
import 'package:flutter/material.dart';

class CarrinhoModel extends FlutterFlowModel<CarrinhoWidget> {
  ///  Local state fields for this page.

  String idprodutocardapio = 'a';

  double? subtotal;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (subtotalCarrinho)] action in Carrinho widget.
  ApiCallResponse? apiResultzfg;
  // State field(s) for CUPOM widget.
  FocusNode? cupomFocusNode;
  TextEditingController? cupomTextController;
  String? Function(BuildContext, String?)? cupomTextControllerValidator;
  // Stores action output result for [Backend Call - API (Pegacupom)] action in CUPOM widget.
  ApiCallResponse? pegacupomresult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    cupomFocusNode?.dispose();
    cupomTextController?.dispose();
  }
}
