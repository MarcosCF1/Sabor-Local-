import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'primeiratela_pgmt_widget.dart' show PrimeiratelaPgmtWidget;
import 'package:flutter/material.dart';

class PrimeiratelaPgmtModel extends FlutterFlowModel<PrimeiratelaPgmtWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (CriarClienteAsaas)] action in Primeiratela-pgmt widget.
  ApiCallResponse? apiResult8rn;
  // Stores action output result for [Backend Call - API (GetClientIP)] action in Primeiratela-pgmt widget.
  ApiCallResponse? userIP;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (CriarPedidoASSAS)] action in Button widget.
  ApiCallResponse? pedido;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
