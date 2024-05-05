// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.32.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// Rust type: RustOpaqueNom<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<DroppableTwinSse>>
@sealed
class DroppableTwinSse extends RustOpaque {
  DroppableTwinSse.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  DroppableTwinSse.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_DroppableTwinSse,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_DroppableTwinSse,
    rustArcDecrementStrongCountPtr: RustLib
        .instance.api.rust_arc_decrement_strong_count_DroppableTwinSsePtr,
  );

  Stream<int> createStreamTwinSse({dynamic hint}) => RustLib.instance.api
      .droppableTwinSseCreateStreamTwinSse(that: this, hint: hint);

  static Future<int> getDropCountTwinSse({dynamic hint}) =>
      RustLib.instance.api.droppableTwinSseGetDropCountTwinSse(hint: hint);

  static Future<DroppableTwinSse> newTwinSse({dynamic hint}) =>
      RustLib.instance.api.droppableTwinSseNewTwinSse(hint: hint);

  Future<void> simpleMethodTwinSse({dynamic hint}) => RustLib.instance.api
      .droppableTwinSseSimpleMethodTwinSse(that: this, hint: hint);
}
