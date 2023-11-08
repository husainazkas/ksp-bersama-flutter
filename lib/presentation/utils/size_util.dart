import 'package:flutter/material.dart';

double width(
  BuildContext context, {
  double? mobile,
  double? tablet,
  double? desktop,
}) {
  final size = MediaQuery.maybeSizeOf(context);
  if (size != null) {
    if (size.width > 1200) {
      if (desktop != null) return desktop;
    }
    if (size.width > 600) {
      if (tablet != null) return tablet;
    }
    if (mobile != null) return mobile;
    return size.width;
  }
  return 0.0;
}

double height(
  BuildContext context, {
  double? mobile,
  double? tablet,
  double? desktop,
}) {
  final size = MediaQuery.maybeSizeOf(context);
  if (size != null) {
    if (size.height > 1200) {
      if (desktop != null) return desktop;
    }
    if (size.width > 600) {
      if (tablet != null) return tablet;
    }
    if (mobile != null) return mobile;
    return size.width;
  }
  return 0.0;
}
