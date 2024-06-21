// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These functions are ignored (category: IgnoreBecauseSelfTypeNotAllowed): `method_with_bad_self_twin_sse`

// Rust type: RustOpaqueNom<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<MyImplTraitWithSelfTwinSse>>
abstract class MyImplTraitWithSelfTwinSse
    implements RustOpaqueInterface, MyTraitWithSelfTwinSse {
  Future<void> methodWithBadSelfTwinSse(
      {required MyImplTraitWithSelfTwinSse another});

  Future<MyImplTraitWithSelfTwinSse> methodWithGoodSelfTwinSse();
}

// Rust type: RustOpaqueNom<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<StructOneWithTraitTwinSse>>
abstract class StructOneWithTraitTwinSse
    implements RustOpaqueInterface, SimpleTraitTwinSse {
  int get one;

  void set one(int one);

  Future<int> simpleTraitFnReceiverBorrowTwinSse();

  static Future<StructOneWithTraitTwinSse> simpleTraitFnTwinSse(
          {required int value}) =>
      RustLib.instance.api
          .crateApiPseudoManualImplTraitTwinSseStructOneWithTraitTwinSseSimpleTraitFnTwinSse(
              value: value);

  static Future<int> simpleTraitFnWithDefaultImplTwinSse() => RustLib
      .instance.api
      .crateApiPseudoManualImplTraitTwinSseStructOneWithTraitTwinSseSimpleTraitFnWithDefaultImplTwinSse();
}

// Rust type: RustOpaqueNom<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<StructTwoWithTraitTwinSse>>
abstract class StructTwoWithTraitTwinSse
    implements RustOpaqueInterface, SimpleTraitTwinSse {
  int get two;

  void set two(int two);

  Future<int> simpleTraitFnReceiverBorrowTwinSse();

  static Future<StructTwoWithTraitTwinSse> simpleTraitFnTwinSse(
          {required int value}) =>
      RustLib.instance.api
          .crateApiPseudoManualImplTraitTwinSseStructTwoWithTraitTwinSseSimpleTraitFnTwinSse(
              value: value);

  static Future<int> simpleTraitFnWithDefaultImplTwinSse() => RustLib
      .instance.api
      .crateApiPseudoManualImplTraitTwinSseStructTwoWithTraitTwinSseSimpleTraitFnWithDefaultImplTwinSse();
}

abstract class MyTraitWithSelfTwinSse {
  Future<MyTraitWithSelfTwinSse> methodWithGoodSelfTwinSse();
}

abstract class SimpleTraitTwinSse {
  Future<int> simpleTraitFnReceiverBorrowTwinSse();
}
