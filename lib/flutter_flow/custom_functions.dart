import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

String convertGrade(String? grade) {
  // this code doesn't seem to be triggered when the text field is empty
  // i'll just ignore it, [empty text field] isn't a number anyways so the output isn't wrong
  if (grade == null) return "Enter a Grade";
  double g = 0;
  try {
    g = double.parse(grade);
  } catch (Exception) {
    return "Not a Number";
  }

  if (g < 0) return "Out of Range";
  if (g > 100) return "Out of Range";
  if (g < 60) return "F";
  if (g < 70) return "D";
  if (g < 80) return "C";
  if (g < 90) return "B";
  return "A";
}
