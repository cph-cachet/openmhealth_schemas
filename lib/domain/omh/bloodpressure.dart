import 'package:openmhealth_schemas/openmhealth_schemas.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bloodpressure.g.dart';

/// This schema represents a person’s blood pressure as a combination of a systolic blood pressure and diastolic blood pressure,
/// and whether the patient was lying down, sitting, or standing when the blood pressure was obtained.
/// This schema can be used for either a single blood pressure measurement, or for basic descriptive statistics (see the [DescriptiveStatistic] schema).
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_blood-pressure">blood-pressure</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class BloodPressure extends Measure {
  static SchemaId SCHEMA_ID =
      new SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE, "blood-pressure", new SchemaVersion(1, 0));

  SystolicBloodPressure systolicBloodPressure;
  DiastolicBloodPressure diastolicBloodPressure;
  String positionDuringMeasurement;

  /// Creates a [BloodPressure]. The [systolicBloodPressure] and [diastolicBloodPressure] are required according to the OMH definition.
  BloodPressure(this.systolicBloodPressure, this.diastolicBloodPressure, {this.positionDuringMeasurement});

  factory BloodPressure.fromJson(Map<String, dynamic> json) => _$BloodPressureFromJson(json);

  Map<String, dynamic> toJson() => _$BloodPressureToJson(this);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_systolic-blood-pressure">systolic-blood-pressure</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class SystolicBloodPressure extends UnitValue {
  static SchemaId SCHEMA_ID =
      new SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE, "systolic-blood-pressure", new SchemaVersion(1, 0));

  SystolicBloodPressure(String unit, value) : super(unit, value);

  factory SystolicBloodPressure.fromJson(Map<String, dynamic> json) => _$SystolicBloodPressureFromJson(json);

  Map<String, dynamic> toJson() => _$SystolicBloodPressureToJson(this);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_diastolic-blood-pressure">diastolic-blood-pressure</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class DiastolicBloodPressure extends UnitValue {
  static SchemaId SCHEMA_ID =
      new SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE, "diastolic-blood-pressure", new SchemaVersion(1, 0));

  DiastolicBloodPressure(String unit, value) : super(unit, value);

  factory DiastolicBloodPressure.fromJson(Map<String, dynamic> json) => _$DiastolicBloodPressureFromJson(json);

  Map<String, dynamic> toJson() => _$DiastolicBloodPressureToJson(this);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// A unit of blood pressure.

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
