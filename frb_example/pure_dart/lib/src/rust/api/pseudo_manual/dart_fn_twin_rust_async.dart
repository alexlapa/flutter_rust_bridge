// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.3.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

Future<void> rustCallDartSimpleTwinRustAsync(
        {required FutureOr<void> Function() callback}) =>
    RustLib.instance.api
        .crateApiPseudoManualDartFnTwinRustAsyncRustCallDartSimpleTwinRustAsync(
            callback: callback);

Future<void> rustCallDartOneArgTwinRustAsync(
        {required FutureOr<void> Function(String) callback}) =>
    RustLib.instance.api
        .crateApiPseudoManualDartFnTwinRustAsyncRustCallDartOneArgTwinRustAsync(
            callback: callback);

Future<void> rustCallDartTwoArgsTwinRustAsync(
        {required FutureOr<void> Function(
                String, DemoStructForRustCallDartTwinRustAsync)
            callback}) =>
    RustLib.instance.api
        .crateApiPseudoManualDartFnTwinRustAsyncRustCallDartTwoArgsTwinRustAsync(
            callback: callback);

Future<void> rustCallDartReturnTwinRustAsync(
        {required FutureOr<String> Function() callback}) =>
    RustLib.instance.api
        .crateApiPseudoManualDartFnTwinRustAsyncRustCallDartReturnTwinRustAsync(
            callback: callback);

Future<void> rustCallDartLoopbackTwinRustAsync(
        {required FutureOr<DemoStructForRustCallDartTwinRustAsync> Function(
                DemoStructForRustCallDartTwinRustAsync)
            callback}) =>
    RustLib.instance.api
        .crateApiPseudoManualDartFnTwinRustAsyncRustCallDartLoopbackTwinRustAsync(
            callback: callback);

Future<void> rustCallDartWithDartOpaqueArgTwinRustAsync(
        {required Object input,
        required FutureOr<void> Function(Object) callback}) =>
    RustLib.instance.api
        .crateApiPseudoManualDartFnTwinRustAsyncRustCallDartWithDartOpaqueArgTwinRustAsync(
            input: input, callback: callback);

Future<Object> rustCallDartWithDartOpaqueResultTwinRustAsync(
        {required FutureOr<Object> Function() callback}) =>
    RustLib.instance.api
        .crateApiPseudoManualDartFnTwinRustAsyncRustCallDartWithDartOpaqueResultTwinRustAsync(
            callback: callback);

Future<void> rustCallDartMultiTimesTwinRustAsync(
        {required FutureOr<void> Function() callback, required int numTimes}) =>
    RustLib.instance.api
        .crateApiPseudoManualDartFnTwinRustAsyncRustCallDartMultiTimesTwinRustAsync(
            callback: callback, numTimes: numTimes);

Future<void> rustCallDartReturnResultTwinRustAsync(
        {required FutureOr<String> Function(String) callback,
        String? expectOutput}) =>
    RustLib.instance.api
        .crateApiPseudoManualDartFnTwinRustAsyncRustCallDartReturnResultTwinRustAsync(
            callback: callback, expectOutput: expectOutput);

class DemoStructForRustCallDartTwinRustAsync {
  final String name;

  const DemoStructForRustCallDartTwinRustAsync({
    required this.name,
  });

  @override
  int get hashCode => name.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DemoStructForRustCallDartTwinRustAsync &&
          runtimeType == other.runtimeType &&
          name == other.name;
}
