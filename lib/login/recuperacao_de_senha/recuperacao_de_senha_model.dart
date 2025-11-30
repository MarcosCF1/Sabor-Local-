import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'recuperacao_de_senha_widget.dart' show RecuperacaoDeSenhaWidget;
import 'package:flutter/material.dart';

class RecuperacaoDeSenhaModel
    extends FlutterFlowModel<RecuperacaoDeSenhaWidget> {
  ///  Local state fields for this page.

  String? codigo;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (VerificacaoExistenciaEmailRecuperacaoSenha)] action in Button widget.
  ApiCallResponse? apiResultiqk;
  // Stores action output result for [Backend Call - API (sendGridEmailVerificacao)] action in Button widget.
  ApiCallResponse? apiResult1uo;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
