import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getPublicIp] action in HomePage widget.
  String? userIp;
  // Stores action output result for [Backend Call - API (RecomendacaoPratosClienteBusca)] action in HomePage widget.
  ApiCallResponse? apiResultt72;
  // Stores action output result for [Backend Call - API (BuscaDadosFotoClienteid)] action in HomePage widget.
  ApiCallResponse? clienteInfo;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
