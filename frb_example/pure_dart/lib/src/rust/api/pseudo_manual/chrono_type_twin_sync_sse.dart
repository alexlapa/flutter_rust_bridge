// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.35.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

DateTime datetimeUtcTwinSyncSse({required DateTime d, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualChronoTypeTwinSyncSseDatetimeUtcTwinSyncSse(
            d: d, hint: hint);

DateTime datetimeLocalTwinSyncSse({required DateTime d, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualChronoTypeTwinSyncSseDatetimeLocalTwinSyncSse(
            d: d, hint: hint);

DateTime naivedatetimeTwinSyncSse({required DateTime d, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualChronoTypeTwinSyncSseNaivedatetimeTwinSyncSse(
            d: d, hint: hint);

DateTime? optionalEmptyDatetimeUtcTwinSyncSse({DateTime? d, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualChronoTypeTwinSyncSseOptionalEmptyDatetimeUtcTwinSyncSse(
            d: d, hint: hint);

Duration durationTwinSyncSse({required Duration d, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualChronoTypeTwinSyncSseDurationTwinSyncSse(
            d: d, hint: hint);

List<Duration> handleTimestampsTwinSyncSse(
        {required List<DateTime> timestamps,
        required DateTime epoch,
        dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualChronoTypeTwinSyncSseHandleTimestampsTwinSyncSse(
            timestamps: timestamps, epoch: epoch, hint: hint);

List<DateTime> handleDurationsTwinSyncSse(
        {required List<Duration> durations,
        required DateTime since,
        dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualChronoTypeTwinSyncSseHandleDurationsTwinSyncSse(
            durations: durations, since: since, hint: hint);

TestChronoTwinSyncSse testChronoTwinSyncSse({dynamic hint}) => RustLib
    .instance.api
    .crateApiPseudoManualChronoTypeTwinSyncSseTestChronoTwinSyncSse(hint: hint);

TestChronoTwinSyncSse testPreciseChronoTwinSyncSse({dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualChronoTypeTwinSyncSseTestPreciseChronoTwinSyncSse(
            hint: hint);

Duration howLongDoesItTakeTwinSyncSse(
        {required FeatureChronoTwinSyncSse mine, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualChronoTypeTwinSyncSseHowLongDoesItTakeTwinSyncSse(
            mine: mine, hint: hint);

class FeatureChronoTwinSyncSse {
  final DateTime utc;
  final DateTime local;
  final Duration duration;
  final DateTime naive;

  const FeatureChronoTwinSyncSse({
    required this.utc,
    required this.local,
    required this.duration,
    required this.naive,
  });

  @override
  int get hashCode =>
      utc.hashCode ^ local.hashCode ^ duration.hashCode ^ naive.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FeatureChronoTwinSyncSse &&
          runtimeType == other.runtimeType &&
          utc == other.utc &&
          local == other.local &&
          duration == other.duration &&
          naive == other.naive;
}

class TestChronoTwinSyncSse {
  final DateTime? dt;
  final DateTime? dt2;
  final Duration? du;

  const TestChronoTwinSyncSse({
    this.dt,
    this.dt2,
    this.du,
  });

  @override
  int get hashCode => dt.hashCode ^ dt2.hashCode ^ du.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TestChronoTwinSyncSse &&
          runtimeType == other.runtimeType &&
          dt == other.dt &&
          dt2 == other.dt2 &&
          du == other.du;
}
