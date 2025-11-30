import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'editar_informacoes_perfil_widget.dart'
    show EditarInformacoesPerfilWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EditarInformacoesPerfilModel
    extends FlutterFlowModel<EditarInformacoesPerfilWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataWru = false;
  FFUploadedFile uploadedLocalFile_uploadDataWru =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Stores action output result for [Backend Call - API (UploadFotoUsuario)] action in Container widget.
  ApiCallResponse? apiResult0fi;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  late MaskTextInputFormatter textFieldMask2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Backend Call - API (AtualizaInformacaoPerfilCliente)] action in Button widget.
  ApiCallResponse? apiResulton6;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
