// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.39.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'misc_no_twin_example_a.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

Future<void> sameFunctionNameInDifferentFiles() => RustLib.instance.api
    .crateApiMiscNoTwinExampleBSameFunctionNameInDifferentFiles();

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<StructInMiscNoTwinExampleB>>
abstract class StructInMiscNoTwinExampleB implements RustOpaqueInterface {}

class StructWithImplBlockInAnotherFileDependency {
  const StructWithImplBlockInAnotherFileDependency();

  @override
  int get hashCode => 0;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StructWithImplBlockInAnotherFileDependency &&
          runtimeType == other.runtimeType;
}
