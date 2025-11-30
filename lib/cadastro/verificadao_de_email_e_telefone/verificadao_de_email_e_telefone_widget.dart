import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:custom_openstreetmap_vmty5u/app_state.dart'
    as custom_openstreetmap_vmty5u_app_state;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'verificadao_de_email_e_telefone_model.dart';
export 'verificadao_de_email_e_telefone_model.dart';

class VerificadaoDeEmailETelefoneWidget extends StatefulWidget {
  const VerificadaoDeEmailETelefoneWidget({
    super.key,
    required this.email,
    required this.senha,
    required this.nomeCompleto,
    required this.telefone,
    required this.from,
    required this.cpf,
  });

  final String? email;
  final String? senha;
  final String? nomeCompleto;
  final String? telefone;
  final String? from;
  final String? cpf;

  static String routeName = 'VerificadaoDeEmail_e_Telefone';
  static String routePath = '/verificadaoDeEmailETelefone';

  @override
  State<VerificadaoDeEmailETelefoneWidget> createState() =>
      _VerificadaoDeEmailETelefoneWidgetState();
}

class _VerificadaoDeEmailETelefoneWidgetState
    extends State<VerificadaoDeEmailETelefoneWidget> {
  late VerificadaoDeEmailETelefoneModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VerificadaoDeEmailETelefoneModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      while (FFAppState().temporestante > 0) {
        await Future.delayed(
          Duration(
            milliseconds: 1000,
          ),
        );
        FFAppState().temporestante = FFAppState().temporestante + -1;
        safeSetState(() {});
      }
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text('Algo deu errado...'),
            content: Text(
                'Seu código de verificação expirou. Por favor reinicie o cadastramento'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext),
                child: Text('Ok'),
              ),
            ],
          );
        },
      );
    });

    _model.pinCodeFocusNode ??= FocusNode();
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 393.0,
                height: 852.0,
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.12, 0.28),
                      child: FFButtonWidget(
                        onPressed: () async {
                          Function() _navigate = () {};
                          if ((_model.pinCodeController!.text ==
                                  FFAppState().Codigo) &&
                              (FFAppState().temporestante > 0)) {
                            _model.apiResult7pp = await ApicadCall.call(
                              name: widget.nomeCompleto,
                              email: widget.email,
                              phonenumber: widget.telefone,
                              password: widget.senha,
                              cpf: widget.cpf,
                            );

                            if ((_model.apiResult7pp?.succeeded ?? true)) {
                              FFAppState().AuthToken = ApicadCall.authToken(
                                (_model.apiResult7pp?.jsonBody ?? ''),
                              )!;
                              _model.ap1 = await AuthMeCall.call(
                                token: ApicadCall.authToken(
                                  (_model.apiResult7pp?.jsonBody ?? ''),
                                ),
                              );

                              FFAppState().Userid = AuthMeCall.idUser(
                                (_model.ap1?.jsonBody ?? ''),
                              )!
                                  .toString();
                              FFAppState().email = AuthMeCall.emailUser(
                                (_model.ap1?.jsonBody ?? ''),
                              )!;
                              FFAppState().papel = AuthMeCall.papelUser(
                                (_model.ap1?.jsonBody ?? ''),
                              )!
                                  .toString();
                              FFAppState().Nomecompleto = AuthMeCall.nomeUser(
                                (_model.ap1?.jsonBody ?? ''),
                              )!;
                              _model.abc = await BuscaClienteIDCall.call(
                                userId: FFAppState().Userid,
                              );

                              FFAppState().ClienteID =
                                  BuscaClienteIDCall.clienteID(
                                (_model.abc?.jsonBody ?? ''),
                              )!
                                      .toString();
                              await EnviaCupomCall.call(
                                clienteId: FFAppState().ClienteID,
                              );

                              GoRouter.of(context).prepareAuthEvent();
                              await authManager.signIn();
                              _navigate = () => context.goNamedAuth(
                                  HomePageWidget.routeName, context.mounted);
                            }
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('Cadastro Concluído!'),
                                  content: Text(
                                      'Seu cadastro foi feito com sucesso, obrigado por ser um cliente Sabor Local'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );
                          } else {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('Algo deu errado...'),
                                  content: Text(
                                      'O código inserido está errado ou expirou, por favor tente novamente.'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );
                          }

                          _navigate();

                          safeSetState(() {});
                        },
                        text: 'Verificar',
                        options: FFButtonOptions(
                          width: 302.0,
                          height: 48.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primaryText,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                            font: GoogleFonts.konkhmerSleokchher(
                              fontWeight: FontWeight.normal,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontStyle,
                            ),
                            color: Colors.white,
                            fontSize: 22.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                            shadows: [
                              Shadow(
                                color: Colors.black,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 4.0,
                              )
                            ],
                          ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(15.0),
                          hoverColor: Color(0xFC313131),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.04, -0.66),
                      child: Text(
                        'Verificação de código',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.konkhmerSleokchher(
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              fontSize: 30.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, -0.42),
                      child: Text(
                        'Digite o número enviado ao  seu número de telefone ou \nE-mail\n',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FontWeight.normal,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              fontSize: 23.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, -0.12),
                      child: PinCodeTextField(
                        autoDisposeControllers: false,
                        appContext: context,
                        length: 5,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyLarge.override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .fontStyle,
                                ),
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        enableActiveFill: false,
                        autoFocus: true,
                        focusNode: _model.pinCodeFocusNode,
                        enablePinAutofill: false,
                        errorTextSpace: 16.0,
                        showCursor: true,
                        cursorColor: FlutterFlowTheme.of(context).tertiary,
                        obscureText: false,
                        keyboardType: TextInputType.visiblePassword,
                        pinTheme: PinTheme(
                          fieldHeight: 58.0,
                          fieldWidth: 58.0,
                          borderWidth: 2.0,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(7.0),
                            bottomRight: Radius.circular(7.0),
                            topLeft: Radius.circular(7.0),
                            topRight: Radius.circular(7.0),
                          ),
                          shape: PinCodeFieldShape.box,
                          activeColor: Color(0xFFCC3D1E),
                          inactiveColor: Color(0xFF5C5C5C),
                          selectedColor: Colors.black,
                        ),
                        controller: _model.pinCodeController,
                        onChanged: (_) {},
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: _model.pinCodeControllerValidator
                            .asValidator(context),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.06, 0.48),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          FFAppState().Codigo = random_data.randomString(
                            5,
                            5,
                            false,
                            false,
                            true,
                          );
                          FFAppState().temporestante = 40;
                          safeSetState(() {});
                          _model.apiResultc7l2 =
                              await SendGridEmailVerificacaoCall.call(
                            to: widget.email,
                            content:
                                'Bem vindo ${widget.nomeCompleto} ao Sabor Local! Aqui está o seu código de verificação: ${FFAppState().Codigo}',
                            from: 'Kaique.cunha@aluno.faculdadeimpacta.com.br',
                            subject: 'Codigo Verificação Sabor Local',
                          );

                          if ((_model.apiResultc7l2?.succeeded ?? true)) {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('Código de verificação'),
                                  content: Text(
                                      'O código de verficação foi enviado!'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                          while (FFAppState().temporestante > 0) {
                            await Future.delayed(
                              Duration(
                                milliseconds: 1000,
                              ),
                            );
                            FFAppState().temporestante =
                                FFAppState().temporestante + -1;
                            safeSetState(() {});
                          }
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('Algo deu errado...'),
                                content: Text(
                                    'Código inválido. Por favor reinicie o cadastramento.'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Ok'),
                                  ),
                                ],
                              );
                            },
                          );

                          safeSetState(() {});
                        },
                        child: Text(
                          'Reenviar código',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: GoogleFonts.konkhmerSleokchher(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 22.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          FFAppState().temporestante = 40;
                          safeSetState(() {});
                          context.safePop();
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 30.0,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.06, 0.48),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 600.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.safePop();
                          },
                          child: Text(
                            'Voltar',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.konkhmerSleokchher(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 22.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.02, 0.04),
                      child: Container(
                        width: 123.52,
                        height: 25.9,
                        decoration: BoxDecoration(
                          color: Color(0xFFCC3D1E),
                          borderRadius: BorderRadius.circular(8.0),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: Color(0xFFCC3D1E),
                            width: 2.0,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            '${FFAppState().temporestante.toString()} Segundos',
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
