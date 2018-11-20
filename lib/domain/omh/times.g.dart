// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'times.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeFrame _$TimeFrameFromJson(Map<String, dynamic> json) {
  return TimeFrame(
      timeInterval: json['time_interval'] == null
          ? null
          : TimeInterval.fromJson(
              json['time_interval'] as Map<String, dynamic>),
      dateTime: json['date_time'] == null
          ? null
          : DateTime.parse(json['date_time'] as String));
}

Map<String, dynamic> _$TimeFrameToJson(TimeFrame instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('time_interval', instance.timeInterval);
  writeNotNull('date_time', instance.dateTime?.toIso8601String());
  return val;
}

TimeInterval _$TimeIntervalFromJson(Map<String, dynamic> json) {
  return TimeInterval(
      startDateTime: json['start_date_time'] == null
          ? null
          : DateTime.parse(json['start_date_time'] as String),
      endDateTime: json['end_date_time'] == null
          ? null
          : DateTime.parse(json['end_date_time'] as String),
      duration: json['duration'] == null
          ? null
          : DurationUnitValue.fromJson(
              json['duration'] as Map<String, dynamic>),
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      partOfDay: json['part_of_day'] as String);
}

Map<String, dynamic> _$TimeIntervalToJson(TimeInterval instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('start_date_time', instance.startDateTime?.toIso8601String());
  writeNotNull('end_date_time', instance.endDateTime?.toIso8601String());
  writeNotNull('duration', instance.duration);
  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('part_of_day', instance.partOfDay);
  return val;
}

DurationUnitValue _$DurationUnitValueFromJson(Map<String, dynamic> json) {
  return DurationUnitValue(
      json['unit'] as String, (json['value'] as num)?.toDouble());
}

Map<String, dynamic> _$DurationUnitValueToJson(DurationUnitValue instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('value', instance.value);
  writeNotNull('unit', instance.unit);
  return val;
}
