// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhysicalActivity _$PhysicalActivityFromJson(Map<String, dynamic> json) {
  return PhysicalActivity(json['activity_name'] as String,
      distance: json['distance'] == null
          ? null
          : LengthUnitValue.fromJson(json['distance'] as Map<String, dynamic>),
      reportedActivityIntensity: json['reported_activity_intensity'] as String,
      caloriesBurned: json['calories_burned'] == null
          ? null
          : KcalUnitValue.fromJson(
              json['calories_burned'] as Map<String, dynamic>))
    ..effectiveTimeFrame = json['effective_time_frame'] == null
        ? null
        : TimeFrame.fromJson(
            json['effective_time_frame'] as Map<String, dynamic>)
    ..descriptiveStatistic = json['descriptive_statistic'] as String
    ..userNotes = json['user_notes'] as String;
}

Map<String, dynamic> _$PhysicalActivityToJson(PhysicalActivity instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  writeNotNull('activity_name', instance.activityName);
  writeNotNull('distance', instance.distance);
  writeNotNull(
      'reported_activity_intensity', instance.reportedActivityIntensity);
  writeNotNull('calories_burned', instance.caloriesBurned);
  return val;
}

KcalUnitValue _$KcalUnitValueFromJson(Map<String, dynamic> json) {
  return KcalUnitValue(
      json['unit'] as String, (json['value'] as num)?.toDouble());
}

Map<String, dynamic> _$KcalUnitValueToJson(KcalUnitValue instance) {
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

StepCount _$StepCountFromJson(Map<String, dynamic> json) {
  return StepCount(json['step_count'] as int)
    ..effectiveTimeFrame = json['effective_time_frame'] == null
        ? null
        : TimeFrame.fromJson(
            json['effective_time_frame'] as Map<String, dynamic>)
    ..descriptiveStatistic = json['descriptive_statistic'] as String
    ..userNotes = json['user_notes'] as String
    ..descriptiveStatisticDenominator =
        json['descriptive_statistic_denominator'] as String;
}

Map<String, dynamic> _$StepCountToJson(StepCount instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  writeNotNull('step_count', instance.stepCount);
  writeNotNull('descriptive_statistic_denominator',
      instance.descriptiveStatisticDenominator);
  return val;
}

CaloriesBurned _$CaloriesBurnedFromJson(Map<String, dynamic> json) {
  return CaloriesBurned(
      json['kcal_burned'] == null
          ? null
          : KcalUnitValue.fromJson(json['kcal_burned'] as Map<String, dynamic>),
      activityName: json['activity_name'] as String,
      descriptiveStatisticDenominator:
          json['descriptive_statistic_denominator'] as String)
    ..effectiveTimeFrame = json['effective_time_frame'] == null
        ? null
        : TimeFrame.fromJson(
            json['effective_time_frame'] as Map<String, dynamic>)
    ..descriptiveStatistic = json['descriptive_statistic'] as String
    ..userNotes = json['user_notes'] as String;
}

Map<String, dynamic> _$CaloriesBurnedToJson(CaloriesBurned instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  writeNotNull('kcal_burned', instance.kcalBurned);
  writeNotNull('activity_name', instance.activityName);
  writeNotNull('descriptive_statistic_denominator',
      instance.descriptiveStatisticDenominator);
  return val;
}

MinutesModerateActivity _$MinutesModerateActivityFromJson(
    Map<String, dynamic> json) {
  return MinutesModerateActivity(json['minutes_moderate_activity'] == null
      ? null
      : DurationUnitValue.fromJson(
          json['minutes_moderate_activity'] as Map<String, dynamic>))
    ..effectiveTimeFrame = json['effective_time_frame'] == null
        ? null
        : TimeFrame.fromJson(
            json['effective_time_frame'] as Map<String, dynamic>)
    ..descriptiveStatistic = json['descriptive_statistic'] as String
    ..userNotes = json['user_notes'] as String;
}

Map<String, dynamic> _$MinutesModerateActivityToJson(
    MinutesModerateActivity instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  writeNotNull('minutes_moderate_activity', instance.minutesModerateActivity);
  return val;
}
