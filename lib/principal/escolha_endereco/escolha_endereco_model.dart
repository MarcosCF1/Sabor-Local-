import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'escolha_endereco_widget.dart' show EscolhaEnderecoWidget;
import 'package:flutter/material.dart';

class EscolhaEnderecoModel extends FlutterFlowModel<EscolhaEnderecoWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (BuscarTodosOsEnderecosPadrao)] action in Escolha_Endereco widget.
  ApiCallResponse? apiResulthuk;
  // Stores action output result for [Backend Call - API (BuscaCoordernadasCEPGoogle)] action in Escolha_Endereco widget.
  ApiCallResponse? apiResult0mu;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // Stores action output result for [Backend Call - API (BuscarTodosOsEnderecosPadrao)] action in GoogleMap widget.
  ApiCallResponse? apiResultttr;
  // Stores action output result for [Backend Call - API (BuscaCoordernadasCEPGoogle)] action in GoogleMap widget.
  ApiCallResponse? apiResultqhp;
  Completer<ApiCallResponse>? apiRequestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
