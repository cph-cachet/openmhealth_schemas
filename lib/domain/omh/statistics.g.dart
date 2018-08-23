// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DescriptiveStatistic _$DescriptiveStatisticFromJson(Map<String, dynamic> json) {
  return DescriptiveStatistic(json['schema_value']);
}

Map<String, dynamic> _$DescriptiveStatisticToJson(
    DescriptiveStatistic instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('schema_value', instance.schemaValue);
  return val;
}

DescriptiveStatisticDenominator _$DescriptiveStatisticDenominatorFromJson(
    Map<String, dynamic> json) {
  return DescriptiveStatisticDenominator(json['schema_value']);
}

Map<String, dynamic> _$DescriptiveStatisticDenominatorToJson(
    DescriptiveStatisticDenominator instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('schema_value', instance.schemaValue);
  return val;
}
