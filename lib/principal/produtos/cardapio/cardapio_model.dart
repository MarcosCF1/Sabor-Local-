import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cardapio_widget.dart' show CardapioWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CardapioModel extends FlutterFlowModel<CardapioWidget> {
  ///  Local state fields for this page.

  int? indexprato = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
