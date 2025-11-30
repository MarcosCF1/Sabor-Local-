import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'pesquisa_widget.dart' show PesquisaWidget;
import 'package:flutter/material.dart';

class PesquisaModel extends FlutterFlowModel<PesquisaWidget> {
  ///  Local state fields for this page.

  List<String> dadospratos = [];
  void addToDadospratos(String item) => dadospratos.add(item);
  void removeFromDadospratos(String item) => dadospratos.remove(item);
  void removeAtIndexFromDadospratos(int index) => dadospratos.removeAt(index);
  void insertAtIndexInDadospratos(int index, String item) =>
      dadospratos.insert(index, item);
  void updateDadospratosAtIndex(int index, Function(String) updateFn) =>
      dadospratos[index] = updateFn(dadospratos[index]);

  List<int> tw = [];
  void addToTw(int item) => tw.add(item);
  void removeFromTw(int item) => tw.remove(item);
  void removeAtIndexFromTw(int index) => tw.removeAt(index);
  void insertAtIndexInTw(int index, int item) => tw.insert(index, item);
  void updateTwAtIndex(int index, Function(int) updateFn) =>
      tw[index] = updateFn(tw[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Teste)] action in Pesquisa widget.
  ApiCallResponse? apiResultdkj;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
