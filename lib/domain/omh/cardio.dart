part of '../../openmhealth_schemas.dart';

/// This schema represents a person’s heart rate and its relationship to physical activity (resting, or after exercise, etc).
/// The schema can be used either for a single heart rate measurement, or for basic descriptive statistics (see the [DescriptiveStatistic] schema).
///
/// OMH version 1.1
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_heart-rate">heart-rate</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class HeartRate extends Measure {
  static SchemaId SCHEMA_ID = SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE,
      SchemaSupport.HEART_RATE, SchemaVersion.V1_0);

  HeartRateUnitValue heartRate;
  String? temporalRelationshipToPhysicalActivity;
  String? temporalRelationshipToSleep;

  /// Creates a [PhysicalActivity]. The [activityName] is required according to the OMH definition.
  HeartRate({
    required this.heartRate,
    this.temporalRelationshipToPhysicalActivity,
    this.temporalRelationshipToSleep,
  });

  factory HeartRate.fromJson(Map<String, dynamic> json) =>
      _$HeartRateFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$HeartRateToJson(this);

  @override
  SchemaId getSchemaId() => SCHEMA_ID;
}

/// This schema represents the the time between the R wave of a person’s successive heartbeats and the relationship of this measure with physical activity.
/// The schema can be used either for a single heart rate measurement, or for basic descriptive statistics (see the [DescriptiveStatistic] schema).
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_rr-interval">rr-interval</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class RrInterval extends Measure {
  static SchemaId SCHEMA_ID = SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE,
      SchemaSupport.RR_INTERVAL, SchemaVersion.V1_0);

  RrInterUnitValue rrInterval;
  String? temporalRelationshipToPhysicalActivity;

  /// Creates a [PhysicalActivity]. The [activityName] is required according to the OMH definition.
  RrInterval({
    required this.rrInterval,
    this.temporalRelationshipToPhysicalActivity,
  });

  factory RrInterval.fromJson(Map<String, dynamic> json) =>
      _$RrIntervalFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$RrIntervalToJson(this);

  @override
  SchemaId getSchemaId() => SCHEMA_ID;
}

/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_kcal-unit-value">kcal-unit-value</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class HeartRateUnitValue extends UnitValue {
  static SchemaId SCHEMA_ID = SchemaId.withVersion(
      SchemaSupport.OMH_NAMESPACE, 'kcal-unit-value', SchemaVersion.V1_0);

  HeartRateUnitValue({
    required String unit,
    required double value,
  }) : super(unit, value);

  factory HeartRateUnitValue.fromJson(Map<String, dynamic> json) =>
      _$HeartRateUnitValueFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$HeartRateUnitValueToJson(this);

  @override
  SchemaId getSchemaId() => SCHEMA_ID;
}

/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_kcal-unit-value">kcal-unit-value</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class RrInterUnitValue extends UnitValue {
  static SchemaId SCHEMA_ID = SchemaId.withVersion(
      SchemaSupport.OMH_NAMESPACE, 'kcal-unit-value', SchemaVersion.V1_0);

  RrInterUnitValue({
    required String unit,
    required double value,
  }) : super(unit, value);

  factory RrInterUnitValue.fromJson(Map<String, dynamic> json) =>
      _$RrInterUnitValueFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$RrInterUnitValueToJson(this);

  @override
  SchemaId getSchemaId() => SCHEMA_ID;
}

/// A unit of heart rate.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_heart-rate">heart-rate</a>
class HeartRateUnit extends Unit {
  static const String BEATS_PER_MINUTE = 'beats/min';

  HeartRateUnit(super.schemaValue);
}
