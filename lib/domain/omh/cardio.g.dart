// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cardio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HeartRate _$HeartRateFromJson(Map<String, dynamic> json) {
  return HeartRate(
      json['heart_rate'] == null
          ? null
          : HeartRateUnitValue.fromJson(
              json['heart_rate'] as Map<String, dynamic>),
      temporalRelationshipToPhysicalActivity:
          json['temporal_relationship_to_physical_activity'] as String,
      temporalRelationshipToSleep:
          json['temporal_relationship_to_sleep'] as String)
    ..effectiveTimeFrame = json['effective_time_frame'] == null
        ? null
        : TimeFrame.fromJson(
            json['effective_time_frame'] as Map<String, dynamic>)
    ..descriptiveStatistic = json['descriptive_statistic'] as String
    ..userNotes = json['user_notes'] as String;
}

Map<String, dynamic> _$HeartRateToJson(HeartRate instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  writeNotNull('heart_rate', instance.heartRate);
  writeNotNull('temporal_relationship_to_physical_activity',
      instance.temporalRelationshipToPhysicalActivity);
  writeNotNull(
      'temporal_relationship_to_sleep', instance.temporalRelationshipToSleep);
  return val;
}

RrInterval _$RrIntervalFromJson(Map<String, dynamic> json) {
  return RrInterval(
      json['rr_interval'] == null
          ? null
          : RrInterUnitValue.fromJson(
              json['rr_interval'] as Map<String, dynamic>),
      temporalRelationshipToPhysicalActivity:
          json['temporal_relationship_to_physical_activity'] as String)
    ..effectiveTimeFrame = json['effective_time_frame'] == null
        ? null
        : TimeFrame.fromJson(
            json['effective_time_frame'] as Map<String, dynamic>)
    ..descriptiveStatistic = json['descriptive_statistic'] as String
    ..userNotes = json['user_notes'] as String;
}

Map<String, dynamic> _$RrIntervalToJson(RrInterval instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  writeNotNull('rr_interval', instance.rrInterval);
  writeNotNull('temporal_relationship_to_physical_activity',
      instance.temporalRelationshipToPhysicalActivity);
  return val;
}

HeartRateUnitValue _$HeartRateUnitValueFromJson(Map<String, dynamic> json) {
  return HeartRateUnitValue(
      json['unit'] as String, (json['value'] as num)?.toDouble());
}

Map<String, dynamic> _$HeartRateUnitValueToJson(HeartRateUnitValue instance) {
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

RrInterUnitValue _$RrInterUnitValueFromJson(Map<String, dynamic> json) {
  return RrInterUnitValue(
      json['unit'] as String, (json['value'] as num)?.toDouble());
}

Map<String, dynamic> _$RrInterUnitValueToJson(RrInterUnitValue instance) {
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
