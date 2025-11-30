import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'verificacao_codigo_de_recuperacao_de_senha_widget.dart'
    show VerificacaoCodigoDeRecuperacaoDeSenhaWidget;
import 'package:flutter/material.dart';

class VerificacaoCodigoDeRecuperacaoDeSenhaModel
    extends FlutterFlowModel<VerificacaoCodigoDeRecuperacaoDeSenhaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (sendGridEmailVerificacao)] action in Text widget.
  ApiCallResponse? apiResultc7;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }
}
