import 'package:flutter/material.dart';
import 'package:get/get.dart';

double height(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double width(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double paddingXtiny(BuildContext context) {
  return MediaQuery.of(context).size.width / 40;
}

double paddingTiny(BuildContext context) {
  return MediaQuery.of(context).size.width / 30;
}

double paddingSmall(BuildContext context) {
  return MediaQuery.of(context).size.width / 20;
}

double paddingMedium(BuildContext context) {
  return MediaQuery.of(context).size.width / 12;
}

double paddingNormal(BuildContext context) {
  return MediaQuery.of(context).size.width / 10;
}
