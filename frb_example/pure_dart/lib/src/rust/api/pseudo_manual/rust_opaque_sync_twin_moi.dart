// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.32.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

HideDataAnotherTwinMoi? syncOptionRustOpaqueTwinMoi({dynamic hint}) =>
    RustLib.instance.api.syncOptionRustOpaqueTwinMoi(hint: hint);

HideDataAnotherTwinMoi syncCreateOpaqueTwinMoi({dynamic hint}) =>
    RustLib.instance.api.syncCreateOpaqueTwinMoi(hint: hint);

NonCloneDataTwinMoi syncCreateNonCloneTwinMoi({dynamic hint}) =>
    RustLib.instance.api.syncCreateNonCloneTwinMoi(hint: hint);

/// Structure for testing the sync-mode RustOpaque code generator.
/// FrbOpaqueSyncReturn must be only return type.
/// FrbOpaqueSyncReturn must be without wrapper like Option<> Vec<> etc.
FrbOpaqueSyncReturnTwinMoi frbSyncGeneratorTestTwinMoi({dynamic hint}) =>
    RustLib.instance.api.frbSyncGeneratorTestTwinMoi(hint: hint);

// Rust type: RustOpaqueMoi<FrbOpaqueSyncReturnTwinMoi>
@sealed
class FrbOpaqueSyncReturnTwinMoi extends RustOpaque {
  FrbOpaqueSyncReturnTwinMoi.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  FrbOpaqueSyncReturnTwinMoi.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api
        .rust_arc_increment_strong_count_FrbOpaqueSyncReturnTwinMoi,
    rustArcDecrementStrongCount: RustLib.instance.api
        .rust_arc_decrement_strong_count_FrbOpaqueSyncReturnTwinMoi,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_FrbOpaqueSyncReturnTwinMoiPtr,
  );
}

// Rust type: RustOpaqueMoi<HideDataAnotherTwinMoi>
@sealed
class HideDataAnotherTwinMoi extends RustOpaque {
  HideDataAnotherTwinMoi.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  HideDataAnotherTwinMoi.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib
        .instance.api.rust_arc_increment_strong_count_HideDataAnotherTwinMoi,
    rustArcDecrementStrongCount: RustLib
        .instance.api.rust_arc_decrement_strong_count_HideDataAnotherTwinMoi,
    rustArcDecrementStrongCountPtr: RustLib
        .instance.api.rust_arc_decrement_strong_count_HideDataAnotherTwinMoiPtr,
  );
}

// Rust type: RustOpaqueMoi<NonCloneDataTwinMoi>
@sealed
class NonCloneDataTwinMoi extends RustOpaque {
  NonCloneDataTwinMoi.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  NonCloneDataTwinMoi.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib
        .instance.api.rust_arc_increment_strong_count_NonCloneDataTwinMoi,
    rustArcDecrementStrongCount: RustLib
        .instance.api.rust_arc_decrement_strong_count_NonCloneDataTwinMoi,
    rustArcDecrementStrongCountPtr: RustLib
        .instance.api.rust_arc_decrement_strong_count_NonCloneDataTwinMoiPtr,
  );
}
