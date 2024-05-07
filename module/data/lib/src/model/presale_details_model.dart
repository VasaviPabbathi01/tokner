import 'dart:ui';

class PresaleDetailsModel {
  final String phase;
  final Color color;
  final String duration;
  final int bnbValue;
  final int softCap;
  final int hardCap;

  PresaleDetailsModel({
    required this.phase,
    required this.duration,
    required this.color,
    required this.bnbValue,
    required this.softCap,
    required this.hardCap,
  });
}