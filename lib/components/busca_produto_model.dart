import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'busca_produto_widget.dart' show BuscaProdutoWidget;
import 'package:flutter/material.dart';

class BuscaProdutoModel extends FlutterFlowModel<BuscaProdutoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (BuscaProdutoNome)] action in TextField widget.
  ApiCallResponse? apiResult98m;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
