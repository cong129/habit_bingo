// import 'dart:math';
// import 'package:flutter/material.dart';

// Color getRandomColor() {
//   Random random = Random();
//   return Color.fromRGBO(
//     random.nextInt(256),
//     random.nextInt(256),
//     random.nextInt(256),
//     1.0,
//   );
// }

import 'dart:math';
import 'package:flutter/material.dart';

Color getRandomColor(Color seedColor, {double brightnessOffset = 0.0}) {
  // HSV 색 공간에서 Seed Color 변환
  HSVColor hsvColor = HSVColor.fromColor(seedColor);

  // 밝기 조절
  double newHue =
      _clamp(hsvColor.hue + Random().nextDouble() * 0.2 - 0.1, 0.0, 1.0);
  double newSaturation =
      _clamp(hsvColor.saturation + Random().nextDouble() * 0.2 - 0.1, 0.0, 1.0);
  double newBrightness = _clamp(hsvColor.value + brightnessOffset, 0.0, 1.0);

  // HSV 색 공간에서 RGB 색 공간으로 변환
  return HSVColor.fromAHSV(1.0, newHue, newSaturation, newBrightness).toColor();
}

// 값을 0에서 1 사이로 제한하는 함수
double _clamp(double value, double min, double max) {
  if (value < min) {
    return min;
  } else if (value > max) {
    return max;
  } else {
    return value;
  }
}
