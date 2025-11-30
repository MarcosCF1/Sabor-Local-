import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'verificadao_de_email_e_telefone_widget.dart'
    show VerificadaoDeEmailETelefoneWidget;
import 'package:flutter/material.dart';

class VerificadaoDeEmailETelefoneModel
    extends FlutterFlowModel<VerificadaoDeEmailETelefoneWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (APICAD)] action in Button widget.
  ApiCallResponse? apiResult7pp;
  // Stores action output result for [Backend Call - API (AuthMe)] action in Button widget.
  ApiCallResponse? ap1;
  // Stores action output result for [Backend Call - API (BuscaClienteID)] action in Button widget.
  ApiCallResponse? abc;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (sendGridEmailVerificacao)] action in Text widget.
  ApiCallResponse? apiResultc7l2;

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
