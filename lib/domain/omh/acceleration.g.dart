// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'acceleration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Acceleration _$AccelerationFromJson(Map<String, dynamic> json) {
  return Acceleration(
      json['acceleration_x'] == null
          ? null
          : AccelerationUnitValue.fromJson(
              json['acceleration_x'] as Map<String, dynamic>),
      json['acceleration_y'] == null
          ? null
          : AccelerationUnitValue.fromJson(
              json['acceleration_y'] as Map<String, dynamic>),
      acceleration_z: json['acceleration_z'] == null
          ? null
          : AccelerationUnitValue.fromJson(
              json['acceleration_z'] as Map<String, dynamic>),
      sensor_body_location: json['sensor_body_location'] as String)
    ..effectiveTimeFrame = json['effective_time_frame'] == null
        ? null
        : TimeFrame.fromJson(
            json['effective_time_frame'] as Map<String, dynamic>)
    ..descriptiveStatistic = json['descriptive_statistic'] as String
    ..userNotes = json['user_notes'] as String;
}

Map<String, dynamic> _$AccelerationToJson(Acceleration instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  writeNotNull('acceleration_x', instance.acceleration_x);
  writeNotNull('acceleration_y', instance.acceleration_y);
  writeNotNull('acceleration_z', instance.acceleration_z);
  writeNotNull('sensor_body_location', instance.sensor_body_location);
  return val;
}

AccelerationUnitValue _$AccelerationUnitValueFromJson(
    Map<String, dynamic> json) {
  return AccelerationUnitValue(
      json['unit'] as String, (json['value'] as num)?.toDouble());
}

Map<String, dynamic> _$AccelerationUnitValueToJson(
    AccelerationUnitValue instance) {
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
