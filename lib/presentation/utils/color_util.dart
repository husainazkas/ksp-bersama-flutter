import 'package:flutter/material.dart';

extension ColorModifier on Color {
  Color withLightness([double amount = 0.0]) {
    assert(amount >= 0.0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslColor = hsl.withLightness((amount).clamp(0.0, 1.0));

    return hslColor.toColor();
  }
}
