import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:custom_openstreetmap_vmty5u/app_state.dart'
    as custom_openstreetmap_vmty5u_app_state;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'tela_inicial_model.dart';
export 'tela_inicial_model.dart';

/// Crie uma pagina de entrada do aplciativo onde você ira animar a logo que
/// eu te enviei fade in e fade out por 2 segundos, o fundo da pagina deve ser
/// preto
class TelaInicialWidget extends StatefulWidget {
  const TelaInicialWidget({super.key});

  static String routeName = 'TelaInicial';
  static String routePath = '/telaInicial';

  @override
  State<TelaInicialWidget> createState() => _TelaInicialWidgetState();
}

class _TelaInicialWidgetState extends State<TelaInicialWidget> {
  late TelaInicialModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TelaInicialModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      while (FFAppState().temporestante > 38) {
        await Future.delayed(
          Duration(
            milliseconds: 1000,
          ),
        );
        FFAppState().temporestante = FFAppState().temporestante + -1;
        safeSetState(() {});
      }

      context.pushNamed(
        LoginWidget.routeName,
        extra: <String, dynamic>{
          kTransitionInfoKey: TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.fade,
            duration: Duration(milliseconds: 2000),
          ),
        },
      );
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    context.watch<custom_openstreetmap_vmty5u_app_state.FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.black,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/image.png',
                      width: 300.0,
                      height: 300.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
