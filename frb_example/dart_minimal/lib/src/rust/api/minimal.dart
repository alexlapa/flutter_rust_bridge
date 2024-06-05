// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.37.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

Future<int> minimalAdder({required int a, required int b}) =>
    RustLib.instance.api.crateApiMinimalMinimalAdder(a: a, b: b);

class StructOneWithTraitTwinNormal {
  final int value;

  const StructOneWithTraitTwinNormal({
    required this.value,
  });

  Future<int> simpleTraitFnReceiverBorrowTwinNormal() => RustLib.instance.api
          .crateApiMinimalStructOneWithTraitTwinNormalSimpleTraitFnReceiverBorrowTwinNormal(
        that: this,
      );

  static Future<StructOneWithTraitTwinNormal> simpleTraitFnTwinNormal(
          {required int value}) =>
      RustLib.instance.api
          .crateApiMinimalStructOneWithTraitTwinNormalSimpleTraitFnTwinNormal(
              value: value);

  static Future<int> simpleTraitFnWithDefaultImplTwinNormal() => RustLib
      .instance.api
      .crateApiMinimalStructOneWithTraitTwinNormalSimpleTraitFnWithDefaultImplTwinNormal();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StructOneWithTraitTwinNormal &&
          runtimeType == other.runtimeType &&
          value == other.value;
}

class StructTwoWithTraitTwinNormal {
  final int value;

  const StructTwoWithTraitTwinNormal({
    required this.value,
  });

  Future<int> simpleTraitFnReceiverBorrowTwinNormal() => RustLib.instance.api
          .crateApiMinimalStructTwoWithTraitTwinNormalSimpleTraitFnReceiverBorrowTwinNormal(
        that: this,
      );

  static Future<StructTwoWithTraitTwinNormal> simpleTraitFnTwinNormal(
          {required int value}) =>
      RustLib.instance.api
          .crateApiMinimalStructTwoWithTraitTwinNormalSimpleTraitFnTwinNormal(
              value: value);

  static Future<int> simpleTraitFnWithDefaultImplTwinNormal() => RustLib
      .instance.api
      .crateApiMinimalStructTwoWithTraitTwinNormalSimpleTraitFnWithDefaultImplTwinNormal();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StructTwoWithTraitTwinNormal &&
          runtimeType == other.runtimeType &&
          value == other.value;
}
