part of '../../openmhealth_schemas.dart';

/// This schema represents a single episode of [physical activity](http://bioportal.bioontology.org/ontologies/SNOMEDCT?p=classes&conceptid=68130003),
/// including the name of the activity, duration, distance, intensity and calories burned.
///
/// OMH version 1.2
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_physical-activity">physical-activity</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class PhysicalActivity extends Measure {
  static SchemaId SCHEMA_ID = SchemaId.withVersion(
      SchemaSupport.OMH_NAMESPACE, SchemaSupport.ACTIVITY, SchemaVersion.V1_0);

  String activityName;
  LengthUnitValue? distance;
  String? reportedActivityIntensity;
  KcalUnitValue? caloriesBurned;

  /// Creates a [PhysicalActivity].
  /// The [activityName] is required according to the OMH definition.
  PhysicalActivity({
    required this.activityName,
    this.distance,
    this.reportedActivityIntensity,
    this.caloriesBurned,
  });

  factory PhysicalActivity.fromJson(Map<String, dynamic> json) =>
      _$PhysicalActivityFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PhysicalActivityToJson(this);

  @override
  SchemaId getSchemaId() => SCHEMA_ID;
}

/// Self-reported intensity of a [PhysicalActivity].
///
/// OMH version 1.2
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_physical-activity">physical-activity</a>
class SelfReportedIntensity {
  static const String LIGHT = 'light';
  static const String MODERATE = 'moderate';
  static const String VIGOROUS = 'vigorous';
}

/// A unit of kilo-calories.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_kcal-unit-value">kcal-unit-value</a>
class KcalUnit extends Unit {
  static const String KILOCALORIE = 'kcal';

  KcalUnit(super.schemaValue);
}

/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_kcal-unit-value">kcal-unit-value</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class KcalUnitValue extends UnitValue {
  static SchemaId SCHEMA_ID = SchemaId.withVersion(
      SchemaSupport.OMH_NAMESPACE, 'kcal-unit-value', SchemaVersion.V1_0);

  KcalUnitValue({
    required String unit,
    required double value,
  }) : super(unit, value);

  factory KcalUnitValue.fromJson(Map<String, dynamic> json) =>
      _$KcalUnitValueFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$KcalUnitValueToJson(this);

  @override
  SchemaId getSchemaId() => SCHEMA_ID;
}

/// This schema represents [number of steps](http://bioportal.bioontology.org/ontologies/LOINC?p=classes&conceptid=55423-8).
///
/// OMH version 2.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_step-count">step-count</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class StepCount extends Measure {
  static SchemaId SCHEMA_ID = SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE,
      SchemaSupport.STEP_COUNT, SchemaVersion.V2_0);

  int stepCount;
  String? descriptiveStatisticDenominator;

  /// Creates a [StepCount]. The [stepCount] is required according to the OMH definition.
  StepCount({
    required this.stepCount,
    this.descriptiveStatisticDenominator,
  });

  factory StepCount.fromJson(Map<String, dynamic> json) =>
      _$StepCountFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StepCountToJson(this);

  @override
  SchemaId getSchemaId() => SCHEMA_ID;
}

/// This schema represents the amount of [calories burned](http://bioportal.bioontology.org/ontologies/LOINC?p=classes&conceptid=41981-2) in kilocalories (kcal).
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_calories-burned">calories-burned</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class CaloriesBurned extends Measure {
  static SchemaId SCHEMA_ID = SchemaId.withVersion(
      SchemaSupport.OMH_NAMESPACE, SchemaSupport.CALORIES, SchemaVersion.V1_0);

  KcalUnitValue kcalBurned;
  String? activityName;
  String? descriptiveStatisticDenominator;

  /// Creates a [CaloriesBurned]. The [kcalBurned] is required according to the OMH definition.
  CaloriesBurned({
    required this.kcalBurned,
    this.activityName,
    this.descriptiveStatisticDenominator,
  });

  factory CaloriesBurned.fromJson(Map<String, dynamic> json) =>
      _$CaloriesBurnedFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$CaloriesBurnedToJson(this);

  @override
  SchemaId getSchemaId() => SCHEMA_ID;
}

/// A measurement of minutes of moderate-intensity activity performed.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_minutes-moderate-activity">minutes-moderate-activity</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class MinutesModerateActivity extends Measure {
  static SchemaId SCHEMA_ID = SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE,
      SchemaSupport.MINUTES_MODERATE_ACTIVITY, SchemaVersion.V1_0);

  DurationUnitValue minutesModerateActivity;

  /// Creates a [MinutesModerateActivity]. The [minutesModerateActivity] is required according to the OMH definition.
  MinutesModerateActivity({required this.minutesModerateActivity});

  factory MinutesModerateActivity.fromJson(Map<String, dynamic> json) =>
      _$MinutesModerateActivityFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$MinutesModerateActivityToJson(this);

  @override
  SchemaId getSchemaId() => SCHEMA_ID;
}
