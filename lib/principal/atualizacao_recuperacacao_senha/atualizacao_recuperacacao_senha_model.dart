import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'atualizacao_recuperacacao_senha_widget.dart'
    show AtualizacaoRecuperacacaoSenhaWidget;
import 'package:flutter/material.dart';

class AtualizacaoRecuperacacaoSenhaModel
    extends FlutterFlowModel<AtualizacaoRecuperacacaoSenhaWidget> {
  ///  Local state fields for this page.

  String? codigo;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Atualizao Senha)] action in Container widget.
  ApiCallResponse? apiResultu0a;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
