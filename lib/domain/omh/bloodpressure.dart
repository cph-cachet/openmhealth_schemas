part of openmhealth_schemas;

/// This schema represents a person’s blood pressure as a combination of a systolic blood pressure and diastolic blood pressure,
/// and whether the patient was lying down, sitting, or standing when the blood pressure was obtained.
/// This schema can be used for either a single blood pressure measurement, or for basic descriptive statistics (see the [DescriptiveStatistic] schema).
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_blood-pressure">blood-pressure</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class BloodPressure extends Measure {
  static SchemaId SCHEMA_ID = SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE,
      SchemaSupport.BLOOD_PRESSURE, SchemaVersion.V1_0);

  SystolicBloodPressure systolicBloodPressure;
  DiastolicBloodPressure diastolicBloodPressure;
  String? positionDuringMeasurement;

  /// Creates a [BloodPressure]. The [systolicBloodPressure] and [diastolicBloodPressure] are required according to the OMH definition.
  BloodPressure({
    required this.systolicBloodPressure,
    required this.diastolicBloodPressure,
    this.positionDuringMeasurement,
  });

  factory BloodPressure.fromJson(Map<String, dynamic> json) =>
      _$BloodPressureFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BloodPressureToJson(this);

  @override
  SchemaId getSchemaId() => SCHEMA_ID;
}

/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_systolic-blood-pressure">systolic-blood-pressure</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class SystolicBloodPressure extends UnitValue {
  static SchemaId SCHEMA_ID = SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE,
      SchemaSupport.SYSTOLIC_BLOOD_PRESSURE, SchemaVersion.V1_0);

  SystolicBloodPressure({
    required String unit,
    required value,
  }) : super(unit, value);

  factory SystolicBloodPressure.fromJson(Map<String, dynamic> json) =>
      _$SystolicBloodPressureFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SystolicBloodPressureToJson(this);

  @override
  SchemaId getSchemaId() => SCHEMA_ID;
}

/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_diastolic-blood-pressure">diastolic-blood-pressure</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class DiastolicBloodPressure extends UnitValue {
  static SchemaId SCHEMA_ID = SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE,
      SchemaSupport.DIASTOLIC_BLOOD_PRESSURE, SchemaVersion.V1_0);

  DiastolicBloodPressure({
    required String unit,
    required value,
  }) : super(unit, value);

  factory DiastolicBloodPressure.fromJson(Map<String, dynamic> json) =>
      _$DiastolicBloodPressureFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DiastolicBloodPressureToJson(this);

  @override
  SchemaId getSchemaId() => SCHEMA_ID;
}

/// A unit of blood pressure.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_blood-pressure">blood-pressure</a>
class BloodPressureUnit extends Unit {
  static const String MM_OF_MERCURY = 'mmHg';

  BloodPressureUnit(schemaValue) : super(schemaValue);
}

/// The position of a subject during a clinical measurement.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_position-during-measurement">position-during-measurement</a>
class PositionDuringMeasurement {
  static const String SITTING = 'sitting';
  static const String LYING_DOWN = 'lying down';
  static const String STANDING = 'standing';
}
