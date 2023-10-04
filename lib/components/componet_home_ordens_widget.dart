import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'componet_home_ordens_model.dart';
export 'componet_home_ordens_model.dart';

class ComponetHomeOrdensWidget extends StatefulWidget {
  const ComponetHomeOrdensWidget({Key? key}) : super(key: key);

  @override
  _ComponetHomeOrdensWidgetState createState() =>
      _ComponetHomeOrdensWidgetState();
}

class _ComponetHomeOrdensWidgetState extends State<ComponetHomeOrdensWidget>
    with TickerProviderStateMixin {
  late ComponetHomeOrdensModel _model;

  final animationsMap = {
    'rowOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 200.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponetHomeOrdensModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                setState(() {
                  FFAppState().Pedido = [];
                  FFAppState().cardNumero = 0.0;
                  FFAppState().Soma = 0.0;
                });

                context.pushNamed('HomePage');
              },
              child: Container(
                height: 32.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).accent1,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    child: Text(
                      'HOME',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: Colors.white,
                          ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                setState(() {
                  FFAppState().Pedido = [];
                  FFAppState().cardNumero = 0.0;
                  FFAppState().Soma = 0.0;
                });

                context.pushNamed('ordens_pedidos');
              },
              child: Container(
                height: 32.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).accent3,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).tertiary,
                  ),
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    child: Text(
                      'MEUS PEDIDOS',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: Colors.white,
                          ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]
            .divide(SizedBox(width: 8.0))
            .addToStart(SizedBox(width: 16.0))
            .addToEnd(SizedBox(width: 16.0)),
      ),
    ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation']!);
  }
}
