// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'openmhealth_schemas.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Acceleration _$AccelerationFromJson(Map<String, dynamic> json) => Acceleration(
      acceleration_x: AccelerationUnitValue.fromJson(
          json['acceleration_x'] as Map<String, dynamic>),
      acceleration_y: AccelerationUnitValue.fromJson(
          json['acceleration_y'] as Map<String, dynamic>),
      acceleration_z: json['acceleration_z'] == null
          ? null
          : AccelerationUnitValue.fromJson(
              json['acceleration_z'] as Map<String, dynamic>),
      sensor_body_location: json['sensor_body_location'] as String?,
    )
      ..effectiveTimeFrame = json['effective_time_frame'] == null
          ? null
          : TimeFrame.fromJson(
              json['effective_time_frame'] as Map<String, dynamic>)
      ..descriptiveStatistic = json['descriptive_statistic'] as String?
      ..userNotes = json['user_notes'] as String?;

Map<String, dynamic> _$AccelerationToJson(Acceleration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  val['acceleration_x'] = instance.acceleration_x;
  val['acceleration_y'] = instance.acceleration_y;
  writeNotNull('acceleration_z', instance.acceleration_z);
  writeNotNull('sensor_body_location', instance.sensor_body_location);
  return val;
}

AccelerationUnitValue _$AccelerationUnitValueFromJson(
        Map<String, dynamic> json) =>
    AccelerationUnitValue(
      unit: json['unit'] as String,
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$AccelerationUnitValueToJson(
        AccelerationUnitValue instance) =>
    <String, dynamic>{
      'value': instance.value,
      'unit': instance.unit,
    };

PhysicalActivity _$PhysicalActivityFromJson(Map<String, dynamic> json) =>
    PhysicalActivity(
      activityName: json['activity_name'] as String,
      distance: json['distance'] == null
          ? null
          : LengthUnitValue.fromJson(json['distance'] as Map<String, dynamic>),
      reportedActivityIntensity: json['reported_activity_intensity'] as String?,
      caloriesBurned: json['calories_burned'] == null
          ? null
          : KcalUnitValue.fromJson(
              json['calories_burned'] as Map<String, dynamic>),
    )
      ..effectiveTimeFrame = json['effective_time_frame'] == null
          ? null
          : TimeFrame.fromJson(
              json['effective_time_frame'] as Map<String, dynamic>)
      ..descriptiveStatistic = json['descriptive_statistic'] as String?
      ..userNotes = json['user_notes'] as String?;

Map<String, dynamic> _$PhysicalActivityToJson(PhysicalActivity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  val['activity_name'] = instance.activityName;
  writeNotNull('distance', instance.distance);
  writeNotNull(
      'reported_activity_intensity', instance.reportedActivityIntensity);
  writeNotNull('calories_burned', instance.caloriesBurned);
  return val;
}

KcalUnitValue _$KcalUnitValueFromJson(Map<String, dynamic> json) =>
    KcalUnitValue(
      unit: json['unit'] as String,
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$KcalUnitValueToJson(KcalUnitValue instance) =>
    <String, dynamic>{
      'value': instance.value,
      'unit': instance.unit,
    };

StepCount _$StepCountFromJson(Map<String, dynamic> json) => StepCount(
      stepCount: json['step_count'] as int,
      descriptiveStatisticDenominator:
          json['descriptive_statistic_denominator'] as String?,
    )
      ..effectiveTimeFrame = json['effective_time_frame'] == null
          ? null
          : TimeFrame.fromJson(
              json['effective_time_frame'] as Map<String, dynamic>)
      ..descriptiveStatistic = json['descriptive_statistic'] as String?
      ..userNotes = json['user_notes'] as String?;

Map<String, dynamic> _$StepCountToJson(StepCount instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  val['step_count'] = instance.stepCount;
  writeNotNull('descriptive_statistic_denominator',
      instance.descriptiveStatisticDenominator);
  return val;
}

CaloriesBurned _$CaloriesBurnedFromJson(Map<String, dynamic> json) =>
    CaloriesBurned(
      kcalBurned:
          KcalUnitValue.fromJson(json['kcal_burned'] as Map<String, dynamic>),
      activityName: json['activity_name'] as String?,
      descriptiveStatisticDenominator:
          json['descriptive_statistic_denominator'] as String?,
    )
      ..effectiveTimeFrame = json['effective_time_frame'] == null
          ? null
          : TimeFrame.fromJson(
              json['effective_time_frame'] as Map<String, dynamic>)
      ..descriptiveStatistic = json['descriptive_statistic'] as String?
      ..userNotes = json['user_notes'] as String?;

Map<String, dynamic> _$CaloriesBurnedToJson(CaloriesBurned instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  val['kcal_burned'] = instance.kcalBurned;
  writeNotNull('activity_name', instance.activityName);
  writeNotNull('descriptive_statistic_denominator',
      instance.descriptiveStatisticDenominator);
  return val;
}

MinutesModerateActivity _$MinutesModerateActivityFromJson(
        Map<String, dynamic> json) =>
    MinutesModerateActivity(
      minutesModerateActivity: DurationUnitValue.fromJson(
          json['minutes_moderate_activity'] as Map<String, dynamic>),
    )
      ..effectiveTimeFrame = json['effective_time_frame'] == null
          ? null
          : TimeFrame.fromJson(
              json['effective_time_frame'] as Map<String, dynamic>)
      ..descriptiveStatistic = json['descriptive_statistic'] as String?
      ..userNotes = json['user_notes'] as String?;

Map<String, dynamic> _$MinutesModerateActivityToJson(
    MinutesModerateActivity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  val['minutes_moderate_activity'] = instance.minutesModerateActivity;
  return val;
}

BloodPressure _$BloodPressureFromJson(Map<String, dynamic> json) =>
    BloodPressure(
      systolicBloodPressure: SystolicBloodPressure.fromJson(
          json['systolic_blood_pressure'] as Map<String, dynamic>),
      diastolicBloodPressure: DiastolicBloodPressure.fromJson(
          json['diastolic_blood_pressure'] as Map<String, dynamic>),
      positionDuringMeasurement: json['position_during_measurement'] as String?,
    )
      ..effectiveTimeFrame = json['effective_time_frame'] == null
          ? null
          : TimeFrame.fromJson(
              json['effective_time_frame'] as Map<String, dynamic>)
      ..descriptiveStatistic = json['descriptive_statistic'] as String?
      ..userNotes = json['user_notes'] as String?;

Map<String, dynamic> _$BloodPressureToJson(BloodPressure instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  val['systolic_blood_pressure'] = instance.systolicBloodPressure;
  val['diastolic_blood_pressure'] = instance.diastolicBloodPressure;
  writeNotNull(
      'position_during_measurement', instance.positionDuringMeasurement);
  return val;
}

SystolicBloodPressure _$SystolicBloodPressureFromJson(
        Map<String, dynamic> json) =>
    SystolicBloodPressure(
      unit: json['unit'] as String,
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$SystolicBloodPressureToJson(
        SystolicBloodPressure instance) =>
    <String, dynamic>{
      'value': instance.value,
      'unit': instance.unit,
    };

DiastolicBloodPressure _$DiastolicBloodPressureFromJson(
        Map<String, dynamic> json) =>
    DiastolicBloodPressure(
      unit: json['unit'] as String,
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$DiastolicBloodPressureToJson(
        DiastolicBloodPressure instance) =>
    <String, dynamic>{
      'value': instance.value,
      'unit': instance.unit,
    };

HeartRate _$HeartRateFromJson(Map<String, dynamic> json) => HeartRate(
      heartRate: HeartRateUnitValue.fromJson(
          json['heart_rate'] as Map<String, dynamic>),
      temporalRelationshipToPhysicalActivity:
          json['temporal_relationship_to_physical_activity'] as String?,
      temporalRelationshipToSleep:
          json['temporal_relationship_to_sleep'] as String?,
    )
      ..effectiveTimeFrame = json['effective_time_frame'] == null
          ? null
          : TimeFrame.fromJson(
              json['effective_time_frame'] as Map<String, dynamic>)
      ..descriptiveStatistic = json['descriptive_statistic'] as String?
      ..userNotes = json['user_notes'] as String?;

Map<String, dynamic> _$HeartRateToJson(HeartRate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  val['heart_rate'] = instance.heartRate;
  writeNotNull('temporal_relationship_to_physical_activity',
      instance.temporalRelationshipToPhysicalActivity);
  writeNotNull(
      'temporal_relationship_to_sleep', instance.temporalRelationshipToSleep);
  return val;
}

RrInterval _$RrIntervalFromJson(Map<String, dynamic> json) => RrInterval(
      rrInterval: RrInterUnitValue.fromJson(
          json['rr_interval'] as Map<String, dynamic>),
      temporalRelationshipToPhysicalActivity:
          json['temporal_relationship_to_physical_activity'] as String?,
    )
      ..effectiveTimeFrame = json['effective_time_frame'] == null
          ? null
          : TimeFrame.fromJson(
              json['effective_time_frame'] as Map<String, dynamic>)
      ..descriptiveStatistic = json['descriptive_statistic'] as String?
      ..userNotes = json['user_notes'] as String?;

Map<String, dynamic> _$RrIntervalToJson(RrInterval instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  val['rr_interval'] = instance.rrInterval;
  writeNotNull('temporal_relationship_to_physical_activity',
      instance.temporalRelationshipToPhysicalActivity);
  return val;
}

HeartRateUnitValue _$HeartRateUnitValueFromJson(Map<String, dynamic> json) =>
    HeartRateUnitValue(
      unit: json['unit'] as String,
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$HeartRateUnitValueToJson(HeartRateUnitValue instance) =>
    <String, dynamic>{
      'value': instance.value,
      'unit': instance.unit,
    };

RrInterUnitValue _$RrInterUnitValueFromJson(Map<String, dynamic> json) =>
    RrInterUnitValue(
      unit: json['unit'] as String,
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$RrInterUnitValueToJson(RrInterUnitValue instance) =>
    <String, dynamic>{
      'value': instance.value,
      'unit': instance.unit,
    };

DataPoint _$DataPointFromJson(Map<String, dynamic> json) => DataPoint(
      body: Measure.fromJson(json['body'] as Map<String, dynamic>),
    )..header =
        DataPointHeader.fromJson(json['header'] as Map<String, dynamic>);

Map<String, dynamic> _$DataPointToJson(DataPoint instance) => <String, dynamic>{
      'header': instance.header,
      'body': instance.body,
    };

DataPointHeader _$DataPointHeaderFromJson(Map<String, dynamic> json) =>
    DataPointHeader(
      id: json['id'] as String,
      creationDateTime: DateTime.parse(json['creation_date_time'] as String),
      schemaId: SchemaId.fromJson(json['schema_id'] as Map<String, dynamic>),
      userId: json['user_id'] as String?,
      acquisitionProvenance: json['acquisition_provenance'] == null
          ? null
          : DataPointAcquisitionProvenance.fromJson(
              json['acquisition_provenance'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataPointHeaderToJson(DataPointHeader instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'creation_date_time': instance.creationDateTime.toIso8601String(),
    'schema_id': instance.schemaId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('acquisition_provenance', instance.acquisitionProvenance);
  writeNotNull('user_id', instance.userId);
  return val;
}

DataPointAcquisitionProvenance _$DataPointAcquisitionProvenanceFromJson(
        Map<String, dynamic> json) =>
    DataPointAcquisitionProvenance(
      sourceName: json['source_name'] as String,
      modality: json['modality'] as String?,
      sourceCreationDateTime: json['source_creation_date_time'] == null
          ? null
          : DateTime.parse(json['source_creation_date_time'] as String),
    );

Map<String, dynamic> _$DataPointAcquisitionProvenanceToJson(
    DataPointAcquisitionProvenance instance) {
  final val = <String, dynamic>{
    'source_name': instance.sourceName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('source_creation_date_time',
      instance.sourceCreationDateTime?.toIso8601String());
  writeNotNull('modality', instance.modality);
  return val;
}

Geoposition _$GeopositionFromJson(Map<String, dynamic> json) => Geoposition(
      latitude: PlaneAngleUnitValue.fromJson(
          json['latitude'] as Map<String, dynamic>),
      longitude: PlaneAngleUnitValue.fromJson(
          json['longitude'] as Map<String, dynamic>),
      elevation: json['elevation'] == null
          ? null
          : LengthUnitValue.fromJson(json['elevation'] as Map<String, dynamic>),
      numberOfSatellitesInView: json['number_of_satellites_in_view'] as int?,
      numberOfSatellitesInFix: json['number_of_satellites_in_fix'] as int?,
      positioningSystem: json['positioning_system'] as String?,
    )
      ..effectiveTimeFrame = json['effective_time_frame'] == null
          ? null
          : TimeFrame.fromJson(
              json['effective_time_frame'] as Map<String, dynamic>)
      ..descriptiveStatistic = json['descriptive_statistic'] as String?
      ..userNotes = json['user_notes'] as String?;

Map<String, dynamic> _$GeopositionToJson(Geoposition instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  val['latitude'] = instance.latitude;
  val['longitude'] = instance.longitude;
  writeNotNull('elevation', instance.elevation);
  writeNotNull(
      'number_of_satellites_in_view', instance.numberOfSatellitesInView);
  writeNotNull('number_of_satellites_in_fix', instance.numberOfSatellitesInFix);
  writeNotNull('positioning_system', instance.positioningSystem);
  return val;
}

PlaneAngleUnitValue _$PlaneAngleUnitValueFromJson(Map<String, dynamic> json) =>
    PlaneAngleUnitValue(
      unit: json['unit'] as String,
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$PlaneAngleUnitValueToJson(
        PlaneAngleUnitValue instance) =>
    <String, dynamic>{
      'value': instance.value,
      'unit': instance.unit,
    };

Measure _$MeasureFromJson(Map<String, dynamic> json) => Measure(
      effectiveTimeFrame: json['effective_time_frame'] == null
          ? null
          : TimeFrame.fromJson(
              json['effective_time_frame'] as Map<String, dynamic>),
      descriptiveStatistic: json['descriptive_statistic'] as String?,
      userNotes: json['user_notes'] as String?,
    );

Map<String, dynamic> _$MeasureToJson(Measure instance) {
  final val = <String, dynamic>{};

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

SchemaId _$SchemaIdFromJson(Map<String, dynamic> json) => SchemaId(
      namespace: json['namespace'] as String,
      name: json['name'] as String,
      version: json['version'] as String,
    );

Map<String, dynamic> _$SchemaIdToJson(SchemaId instance) => <String, dynamic>{
      'namespace': instance.namespace,
      'name': instance.name,
      'version': instance.version,
    };

SchemaVersion _$SchemaVersionFromJson(Map<String, dynamic> json) =>
    SchemaVersion(
      major: json['major'] as int? ?? 1,
      minor: json['minor'] as int? ?? 0,
      qualifier: json['qualifier'] as String?,
    );

Map<String, dynamic> _$SchemaVersionToJson(SchemaVersion instance) {
  final val = <String, dynamic>{
    'major': instance.major,
    'minor': instance.minor,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('qualifier', instance.qualifier);
  return val;
}

Survey _$SurveyFromJson(Map<String, dynamic> json) => Survey(
      deliveryDetails: SurveyDeliveryDetails.fromJson(
          json['delivery_details'] as Map<String, dynamic>),
      score: json['score'] == null
          ? null
          : UnitValue.fromJson(json['score'] as Map<String, dynamic>),
    )
      ..effectiveTimeFrame = json['effective_time_frame'] == null
          ? null
          : TimeFrame.fromJson(
              json['effective_time_frame'] as Map<String, dynamic>)
      ..descriptiveStatistic = json['descriptive_statistic'] as String?
      ..userNotes = json['user_notes'] as String?
      ..items = (json['items'] as List<dynamic>)
          .map((e) => SurveyItem.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$SurveyToJson(Survey instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  val['items'] = instance.items;
  val['delivery_details'] = instance.deliveryDetails;
  writeNotNull('score', instance.score);
  return val;
}

SurveyItem _$SurveyItemFromJson(Map<String, dynamic> json) => SurveyItem(
      question:
          SurveyQuestion.fromJson(json['question'] as Map<String, dynamic>),
      askedDateTime: DateTime.parse(json['asked_date_time'] as String),
      answeredDateTime: DateTime.parse(json['answered_date_time'] as String),
    )
      ..effectiveTimeFrame = json['effective_time_frame'] == null
          ? null
          : TimeFrame.fromJson(
              json['effective_time_frame'] as Map<String, dynamic>)
      ..descriptiveStatistic = json['descriptive_statistic'] as String?
      ..userNotes = json['user_notes'] as String?
      ..answers = (json['answers'] as List<dynamic>)
          .map((e) => AbstractSurveyAnswer.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$SurveyItemToJson(SurveyItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  val['question'] = instance.question;
  val['answers'] = instance.answers;
  val['asked_date_time'] = instance.askedDateTime.toIso8601String();
  val['answered_date_time'] = instance.answeredDateTime.toIso8601String();
  return val;
}

SurveyQuestion _$SurveyQuestionFromJson(Map<String, dynamic> json) =>
    SurveyQuestion(
      text: json['text'] as String,
      label: json['label'] as String?,
    )
      ..effectiveTimeFrame = json['effective_time_frame'] == null
          ? null
          : TimeFrame.fromJson(
              json['effective_time_frame'] as Map<String, dynamic>)
      ..descriptiveStatistic = json['descriptive_statistic'] as String?
      ..userNotes = json['user_notes'] as String?;

Map<String, dynamic> _$SurveyQuestionToJson(SurveyQuestion instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  val['text'] = instance.text;
  writeNotNull('label', instance.label);
  return val;
}

AbstractSurveyAnswer _$AbstractSurveyAnswerFromJson(
        Map<String, dynamic> json) =>
    AbstractSurveyAnswer()
      ..effectiveTimeFrame = json['effective_time_frame'] == null
          ? null
          : TimeFrame.fromJson(
              json['effective_time_frame'] as Map<String, dynamic>)
      ..descriptiveStatistic = json['descriptive_statistic'] as String?
      ..userNotes = json['user_notes'] as String?;

Map<String, dynamic> _$AbstractSurveyAnswerToJson(
    AbstractSurveyAnswer instance) {
  final val = <String, dynamic>{};

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

SurveyAnswer _$SurveyAnswerFromJson(Map<String, dynamic> json) => SurveyAnswer(
      value: json['value'] as String,
    )
      ..effectiveTimeFrame = json['effective_time_frame'] == null
          ? null
          : TimeFrame.fromJson(
              json['effective_time_frame'] as Map<String, dynamic>)
      ..descriptiveStatistic = json['descriptive_statistic'] as String?
      ..userNotes = json['user_notes'] as String?;

Map<String, dynamic> _$SurveyAnswerToJson(SurveyAnswer instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  val['value'] = instance.value;
  return val;
}

SurveyCategoricalAnswer _$SurveyCategoricalAnswerFromJson(
        Map<String, dynamic> json) =>
    SurveyCategoricalAnswer(
      value: Map<String, String>.from(json['value'] as Map),
    )
      ..effectiveTimeFrame = json['effective_time_frame'] == null
          ? null
          : TimeFrame.fromJson(
              json['effective_time_frame'] as Map<String, dynamic>)
      ..descriptiveStatistic = json['descriptive_statistic'] as String?
      ..userNotes = json['user_notes'] as String?;

Map<String, dynamic> _$SurveyCategoricalAnswerToJson(
    SurveyCategoricalAnswer instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  val['value'] = instance.value;
  return val;
}

SurveyDateAnswer _$SurveyDateAnswerFromJson(Map<String, dynamic> json) =>
    SurveyDateAnswer(
      value: DateTime.parse(json['value'] as String),
    )
      ..effectiveTimeFrame = json['effective_time_frame'] == null
          ? null
          : TimeFrame.fromJson(
              json['effective_time_frame'] as Map<String, dynamic>)
      ..descriptiveStatistic = json['descriptive_statistic'] as String?
      ..userNotes = json['user_notes'] as String?;

Map<String, dynamic> _$SurveyDateAnswerToJson(SurveyDateAnswer instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  val['value'] = instance.value.toIso8601String();
  return val;
}

SurveyTimeAnswer _$SurveyTimeAnswerFromJson(Map<String, dynamic> json) =>
    SurveyTimeAnswer(
      value: json['value'] as String,
    )
      ..effectiveTimeFrame = json['effective_time_frame'] == null
          ? null
          : TimeFrame.fromJson(
              json['effective_time_frame'] as Map<String, dynamic>)
      ..descriptiveStatistic = json['descriptive_statistic'] as String?
      ..userNotes = json['user_notes'] as String?;

Map<String, dynamic> _$SurveyTimeAnswerToJson(SurveyTimeAnswer instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  val['value'] = instance.value;
  return val;
}

SurveyUnitValueAnswer _$SurveyUnitValueAnswerFromJson(
        Map<String, dynamic> json) =>
    SurveyUnitValueAnswer(
      value: UnitValue.fromJson(json['value'] as Map<String, dynamic>),
    )
      ..effectiveTimeFrame = json['effective_time_frame'] == null
          ? null
          : TimeFrame.fromJson(
              json['effective_time_frame'] as Map<String, dynamic>)
      ..descriptiveStatistic = json['descriptive_statistic'] as String?
      ..userNotes = json['user_notes'] as String?;

Map<String, dynamic> _$SurveyUnitValueAnswerToJson(
    SurveyUnitValueAnswer instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  val['value'] = instance.value;
  return val;
}

SurveyDeliveryDetails _$SurveyDeliveryDetailsFromJson(
        Map<String, dynamic> json) =>
    SurveyDeliveryDetails(
      startDateTime: DateTime.parse(json['start_date_time'] as String),
      endDateTime: DateTime.parse(json['end_date_time'] as String),
      endStatus: json['end_status'] as String,
    )
      ..effectiveTimeFrame = json['effective_time_frame'] == null
          ? null
          : TimeFrame.fromJson(
              json['effective_time_frame'] as Map<String, dynamic>)
      ..descriptiveStatistic = json['descriptive_statistic'] as String?
      ..userNotes = json['user_notes'] as String?;

Map<String, dynamic> _$SurveyDeliveryDetailsToJson(
    SurveyDeliveryDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  val['start_date_time'] = instance.startDateTime.toIso8601String();
  val['end_date_time'] = instance.endDateTime.toIso8601String();
  val['end_status'] = instance.endStatus;
  return val;
}

SurveyScore _$SurveyScoreFromJson(Map<String, dynamic> json) => SurveyScore(
      score: json['score'] as int?,
      value: json['value'] as String?,
    )
      ..effectiveTimeFrame = json['effective_time_frame'] == null
          ? null
          : TimeFrame.fromJson(
              json['effective_time_frame'] as Map<String, dynamic>)
      ..descriptiveStatistic = json['descriptive_statistic'] as String?
      ..userNotes = json['user_notes'] as String?;

Map<String, dynamic> _$SurveyScoreToJson(SurveyScore instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  writeNotNull('score', instance.score);
  writeNotNull('value', instance.value);
  return val;
}

TimeFrame _$TimeFrameFromJson(Map<String, dynamic> json) => TimeFrame(
      timeInterval: json['time_interval'] == null
          ? null
          : TimeInterval.fromJson(
              json['time_interval'] as Map<String, dynamic>),
      dateTime: json['date_time'] == null
          ? null
          : DateTime.parse(json['date_time'] as String),
    );

Map<String, dynamic> _$TimeFrameToJson(TimeFrame instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('time_interval', instance.timeInterval);
  writeNotNull('date_time', instance.dateTime?.toIso8601String());
  return val;
}

TimeInterval _$TimeIntervalFromJson(Map<String, dynamic> json) => TimeInterval(
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
      partOfDay: json['part_of_day'] as String?,
    );

Map<String, dynamic> _$TimeIntervalToJson(TimeInterval instance) {
  final val = <String, dynamic>{};

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

DurationUnitValue _$DurationUnitValueFromJson(Map<String, dynamic> json) =>
    DurationUnitValue(
      json['unit'] as String,
      (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$DurationUnitValueToJson(DurationUnitValue instance) =>
    <String, dynamic>{
      'value': instance.value,
      'unit': instance.unit,
    };

UnitValue _$UnitValueFromJson(Map<String, dynamic> json) => UnitValue(
      json['unit'] as String,
      (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$UnitValueToJson(UnitValue instance) => <String, dynamic>{
      'value': instance.value,
      'unit': instance.unit,
    };

LengthUnitValue _$LengthUnitValueFromJson(Map<String, dynamic> json) =>
    LengthUnitValue(
      json['unit'] as String,
      (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$LengthUnitValueToJson(LengthUnitValue instance) =>
    <String, dynamic>{
      'value': instance.value,
      'unit': instance.unit,
    };
