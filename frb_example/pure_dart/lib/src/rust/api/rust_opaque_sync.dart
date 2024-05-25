// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.35.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'rust_opaque.dart';

HideDataAnotherTwinNormal? syncOptionRustOpaqueTwinNormal({dynamic hint}) =>
    RustLib.instance.api
        .crateApiRustOpaqueSyncSyncOptionRustOpaqueTwinNormal(hint: hint);

HideDataAnotherTwinNormal syncCreateOpaqueTwinNormal({dynamic hint}) =>
    RustLib.instance.api
        .crateApiRustOpaqueSyncSyncCreateOpaqueTwinNormal(hint: hint);

NonCloneDataTwinNormal syncCreateNonCloneTwinNormal({dynamic hint}) =>
    RustLib.instance.api
        .crateApiRustOpaqueSyncSyncCreateNonCloneTwinNormal(hint: hint);

/// Structure for testing the sync-mode RustOpaque code generator.
/// FrbOpaqueSyncReturn must be only return type.
/// FrbOpaqueSyncReturn must be without wrapper like Option<> Vec<> etc.
FrbOpaqueSyncReturnTwinNormal frbSyncGeneratorTestTwinNormal({dynamic hint}) =>
    RustLib.instance.api
        .crateApiRustOpaqueSyncFrbSyncGeneratorTestTwinNormal(hint: hint);

// Rust type: RustOpaqueNom<FrbOpaqueSyncReturnTwinNormal>
@sealed
class FrbOpaqueSyncReturnTwinNormal extends RustOpaque {
  FrbOpaqueSyncReturnTwinNormal.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  FrbOpaqueSyncReturnTwinNormal.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api
        .rust_arc_increment_strong_count_FrbOpaqueSyncReturnTwinNormal,
    rustArcDecrementStrongCount: RustLib.instance.api
        .rust_arc_decrement_strong_count_FrbOpaqueSyncReturnTwinNormal,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_FrbOpaqueSyncReturnTwinNormalPtr,
  );
}

// Rust type: RustOpaqueNom<HideDataAnotherTwinNormal>
@sealed
class HideDataAnotherTwinNormal extends RustOpaque {
  HideDataAnotherTwinNormal.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  HideDataAnotherTwinNormal.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib
        .instance.api.rust_arc_increment_strong_count_HideDataAnotherTwinNormal,
    rustArcDecrementStrongCount: RustLib
        .instance.api.rust_arc_decrement_strong_count_HideDataAnotherTwinNormal,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_HideDataAnotherTwinNormalPtr,
  );
}
