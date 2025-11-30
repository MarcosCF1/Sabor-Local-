import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'notificacao_model.dart';
export 'notificacao_model.dart';

class NotificacaoWidget extends StatefulWidget {
  const NotificacaoWidget({super.key});

  @override
  State<NotificacaoWidget> createState() => _NotificacaoWidgetState();
}

class _NotificacaoWidgetState extends State<NotificacaoWidget> {
  late NotificacaoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificacaoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
      child: Container(
        width: 194.7,
        height: 392.38,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
      ),
    );
  }
}
