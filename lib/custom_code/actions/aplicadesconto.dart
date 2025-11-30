// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// reformule este custom action para que ele faça o efetue a multiplicação do subtotal pelo valordesconto
Future<String?> aplicadesconto(
  double? subtotal,
  double? valordesconto,
) async {
  // Handle null cases
  if (subtotal == null || valordesconto == null) {
    return null;
  }

  // Calculate the discount amount by multiplying subtotal by discount value
  double descontoCalculado = subtotal * valordesconto;

  // Return the result as a string with 2 decimal places
  return descontoCalculado.toStringAsFixed(2);
}
