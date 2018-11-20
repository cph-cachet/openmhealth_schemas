// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bloodpressure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BloodPressure _$BloodPressureFromJson(Map<String, dynamic> json) {
  return BloodPressure(
      json['systolic_blood_pressure'] == null
          ? null
          : SystolicBloodPressure.fromJson(
              json['systolic_blood_pressure'] as Map<String, dynamic>),
      json['diastolic_blood_pressure'] == null
          ? null
          : DiastolicBloodPressure.fromJson(
              json['diastolic_blood_pressure'] as Map<String, dynamic>),
      positionDuringMeasurement: json['position_during_measurement'] as String)
    ..effectiveTimeFrame = json['effective_time_frame'] == null
        ? null
        : TimeFrame.fromJson(
            json['effective_time_frame'] as Map<String, dynamic>)
    ..descriptiveStatistic = json['descriptive_statistic'] as String
    ..userNotes = json['user_notes'] as String;
}

Map<String, dynamic> _$BloodPressureToJson(BloodPressure instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  writeNotNull('systolic_blood_pressure', instance.systolicBloodPressure);
  writeNotNull('diastolic_blood_pressure', instance.diastolicBloodPressure);
  writeNotNull(
      'position_during_measurement', instance.positionDuringMeasurement);
  return val;
}

SystolicBloodPressure _$SystolicBloodPressureFromJson(
    Map<String, dynamic> json) {
  return SystolicBloodPressure(json['unit'] as String, json['value']);
}

Map<String, dynamic> _$SystolicBloodPressureToJson(
    SystolicBloodPressure instance) {
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

DiastolicBloodPressure _$DiastolicBloodPressureFromJson(
    Map<String, dynamic> json) {
  return DiastolicBloodPressure(json['unit'] as String, json['value']);
}

Map<String, dynamic> _$DiastolicBloodPressureToJson(
    DiastolicBloodPressure instance) {
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
