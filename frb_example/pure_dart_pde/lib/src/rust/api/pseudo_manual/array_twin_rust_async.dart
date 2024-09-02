// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.3.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import '../array.dart';
import 'package:collection/collection.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

Future<U8Array5> getArrayTwinRustAsync() => RustLib.instance.api
    .crateApiPseudoManualArrayTwinRustAsyncGetArrayTwinRustAsync();

Future<PointTwinRustAsyncArray2> getComplexArrayTwinRustAsync() =>
    RustLib.instance.api
        .crateApiPseudoManualArrayTwinRustAsyncGetComplexArrayTwinRustAsync();

Future<MessageIdTwinRustAsync> newMsgidTwinRustAsync({required U8Array32 id}) =>
    RustLib.instance.api
        .crateApiPseudoManualArrayTwinRustAsyncNewMsgidTwinRustAsync(id: id);

Future<U8Array32> useMsgidTwinRustAsync({required MessageIdTwinRustAsync id}) =>
    RustLib.instance.api
        .crateApiPseudoManualArrayTwinRustAsyncUseMsgidTwinRustAsync(id: id);

Future<BlobTwinRustAsync> boxedBlobTwinRustAsync({required U8Array1600 blob}) =>
    RustLib.instance.api
        .crateApiPseudoManualArrayTwinRustAsyncBoxedBlobTwinRustAsync(
            blob: blob);

Future<U8Array1600> useBoxedBlobTwinRustAsync(
        {required BlobTwinRustAsync blob}) =>
    RustLib.instance.api
        .crateApiPseudoManualArrayTwinRustAsyncUseBoxedBlobTwinRustAsync(
            blob: blob);

Future<FeedIdTwinRustAsync> returnBoxedFeedIdTwinRustAsync(
        {required U8Array8 id}) =>
    RustLib.instance.api
        .crateApiPseudoManualArrayTwinRustAsyncReturnBoxedFeedIdTwinRustAsync(
            id: id);

Future<U8Array8> returnBoxedRawFeedIdTwinRustAsync(
        {required FeedIdTwinRustAsync id}) =>
    RustLib.instance.api
        .crateApiPseudoManualArrayTwinRustAsyncReturnBoxedRawFeedIdTwinRustAsync(
            id: id);

Future<TestIdTwinRustAsync> funcTestIdTwinRustAsync(
        {required TestIdTwinRustAsync id}) =>
    RustLib.instance.api
        .crateApiPseudoManualArrayTwinRustAsyncFuncTestIdTwinRustAsync(id: id);

Future<double> lastNumberTwinRustAsync({required F64Array16 array}) =>
    RustLib.instance.api
        .crateApiPseudoManualArrayTwinRustAsyncLastNumberTwinRustAsync(
            array: array);

Future<TestIdTwinRustAsyncArray2> nestedIdTwinRustAsync(
        {required TestIdTwinRustAsyncArray4 id}) =>
    RustLib.instance.api
        .crateApiPseudoManualArrayTwinRustAsyncNestedIdTwinRustAsync(id: id);

class BlobTwinRustAsync {
  final U8Array1600 field0;

  const BlobTwinRustAsync({
    required this.field0,
  });

  @override
  int get hashCode => field0.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BlobTwinRustAsync &&
          runtimeType == other.runtimeType &&
          field0 == other.field0;
}

class FeedIdTwinRustAsync {
  final U8Array8 field0;

  const FeedIdTwinRustAsync({
    required this.field0,
  });

  @override
  int get hashCode => field0.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FeedIdTwinRustAsync &&
          runtimeType == other.runtimeType &&
          field0 == other.field0;
}

class MessageIdTwinRustAsync {
  final U8Array32 field0;

  const MessageIdTwinRustAsync({
    required this.field0,
  });

  @override
  int get hashCode => field0.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MessageIdTwinRustAsync &&
          runtimeType == other.runtimeType &&
          field0 == other.field0;
}

class PointTwinRustAsync {
  final double x;
  final double y;

  const PointTwinRustAsync({
    required this.x,
    required this.y,
  });

  @override
  int get hashCode => x.hashCode ^ y.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PointTwinRustAsync &&
          runtimeType == other.runtimeType &&
          x == other.x &&
          y == other.y;
}

class PointTwinRustAsyncArray2 extends NonGrowableListView<PointTwinRustAsync> {
  static const arraySize = 2;

  @internal
  List<PointTwinRustAsync> get inner => _inner;
  final List<PointTwinRustAsync> _inner;

  PointTwinRustAsyncArray2(this._inner)
      : assert(_inner.length == arraySize),
        super(_inner);

  PointTwinRustAsyncArray2.init(PointTwinRustAsync fill)
      : this(List<PointTwinRustAsync>.filled(arraySize, fill));
}

class TestIdTwinRustAsync {
  final I32Array2 field0;

  const TestIdTwinRustAsync({
    required this.field0,
  });

  @override
  int get hashCode => field0.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TestIdTwinRustAsync &&
          runtimeType == other.runtimeType &&
          field0 == other.field0;
}

class TestIdTwinRustAsyncArray2
    extends NonGrowableListView<TestIdTwinRustAsync> {
  static const arraySize = 2;

  @internal
  List<TestIdTwinRustAsync> get inner => _inner;
  final List<TestIdTwinRustAsync> _inner;

  TestIdTwinRustAsyncArray2(this._inner)
      : assert(_inner.length == arraySize),
        super(_inner);

  TestIdTwinRustAsyncArray2.init(TestIdTwinRustAsync fill)
      : this(List<TestIdTwinRustAsync>.filled(arraySize, fill));
}

class TestIdTwinRustAsyncArray4
    extends NonGrowableListView<TestIdTwinRustAsync> {
  static const arraySize = 4;

  @internal
  List<TestIdTwinRustAsync> get inner => _inner;
  final List<TestIdTwinRustAsync> _inner;

  TestIdTwinRustAsyncArray4(this._inner)
      : assert(_inner.length == arraySize),
        super(_inner);

  TestIdTwinRustAsyncArray4.init(TestIdTwinRustAsync fill)
      : this(List<TestIdTwinRustAsync>.filled(arraySize, fill));
}
