// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Measure _$MeasureFromJson(Map<String, dynamic> json) {
  return Measure()
    ..effectiveTimeFrame = json['effective_time_frame'] == null
        ? null
        : TimeFrame.fromJson(
            json['effective_time_frame'] as Map<String, dynamic>)
    ..descriptiveStatistic = json['descriptive_statistic'] as String
    ..userNotes = json['user_notes'] as String;
}

Map<String, dynamic> _$MeasureToJson(Measure instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  return val;
}
