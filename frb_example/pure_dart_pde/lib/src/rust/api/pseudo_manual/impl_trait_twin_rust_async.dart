// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.37.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

class StructWithTraitTwinRustAsync {
  final int value;

  const StructWithTraitTwinRustAsync({
    required this.value,
  });

  static Future<StructWithTraitTwinRustAsync> simpleTraitFnTwinRustAsync() =>
      RustLib.instance.api
          .crateApiPseudoManualImplTraitTwinRustAsyncStructWithTraitTwinRustAsyncSimpleTraitFnTwinRustAsync();

  static Future<int> simpleTraitFnWithDefaultImplTwinRustAsync() => RustLib
      .instance.api
      .crateApiPseudoManualImplTraitTwinRustAsyncStructWithTraitTwinRustAsyncSimpleTraitFnWithDefaultImplTwinRustAsync();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StructWithTraitTwinRustAsync &&
          runtimeType == other.runtimeType &&
          value == other.value;
}
