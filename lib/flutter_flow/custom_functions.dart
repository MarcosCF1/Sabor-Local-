import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:ff_commons/flutter_flow/lat_lng.dart';
import 'package:ff_commons/flutter_flow/place.dart';
import 'package:ff_commons/flutter_flow/uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/auth/custom_auth/auth_util.dart';
import 'package:custom_openstreetmap_vmty5u/flutter_flow/custom_functions.dart'
    as custom_openstreetmap_vmty5u_functions;

LatLng? transformarlatlong(
  double? latitude,
  double? longitude,
) {
  // Corrija o codigo
// Check if latitude and longitude are not null
  if (latitude != null && longitude != null) {
    return LatLng(latitude, longitude);
  }
  return null; // Return null if either value is null
}

double? mudasubtotal(
  double? subtotal,
  double? valordesconto,
) {
  // make a function that multiplies the value in valordesconto with the value in subtotal
  if (subtotal == null || valordesconto == null) {
    return null;
  }
  double resultado = subtotal * valordesconto;
  return resultado.toDouble();
}
