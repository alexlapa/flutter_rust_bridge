// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.36.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// The functions `deref`, `initialize`, `drop` are not `pub`, thus are ignored.

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<DroppableTwinRustAsync>>
@sealed
class DroppableTwinRustAsync extends RustOpaque {
  DroppableTwinRustAsync.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  DroppableTwinRustAsync.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib
        .instance.api.rust_arc_increment_strong_count_DroppableTwinRustAsync,
    rustArcDecrementStrongCount: RustLib
        .instance.api.rust_arc_decrement_strong_count_DroppableTwinRustAsync,
    rustArcDecrementStrongCountPtr: RustLib
        .instance.api.rust_arc_decrement_strong_count_DroppableTwinRustAsyncPtr,
  );

  Stream<int> createStreamTwinRustAsync({dynamic hint}) => RustLib.instance.api
      .crateApiPseudoManualDroppingTwinRustAsyncDroppableTwinRustAsyncCreateStreamTwinRustAsync(
          that: this, hint: hint);

  static Future<int> getDropCountTwinRustAsync({dynamic hint}) => RustLib
      .instance.api
      .crateApiPseudoManualDroppingTwinRustAsyncDroppableTwinRustAsyncGetDropCountTwinRustAsync(
          hint: hint);

  static Future<DroppableTwinRustAsync> newTwinRustAsync({dynamic hint}) => RustLib
      .instance.api
      .crateApiPseudoManualDroppingTwinRustAsyncDroppableTwinRustAsyncNewTwinRustAsync(
          hint: hint);

  Future<void> simpleMethodTwinRustAsync({dynamic hint}) => RustLib.instance.api
      .crateApiPseudoManualDroppingTwinRustAsyncDroppableTwinRustAsyncSimpleMethodTwinRustAsync(
          that: this, hint: hint);
}
