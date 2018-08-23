import 'package:openmhealth_schemas/openmhealth_schemas.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bloodpressure.g.dart';

/// A person’s blood pressure as a combination of a systolic and a diastolic blood pressure.
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
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class BloodPressureUnit extends Unit {
  static SchemaId SCHEMA_ID =
      new SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE, "blood-pressure-unit-value", new SchemaVersion(1, 0));

  static const String MM_OF_MERCURY = 'mmHg';

  BloodPressureUnit(schemaValue) : super(schemaValue);

  factory BloodPressureUnit.fromJson(Map<String, dynamic> json) => _$BloodPressureUnitFromJson(json);

  Map<String, dynamic> toJson() => _$BloodPressureUnitToJson(this);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// The position of a subject during a clinical measurement.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_position-during-measurement">position-during-measurement</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class PositionDuringMeasurement extends SchemaEnumValue implements SchemaSupport {
  static SchemaId SCHEMA_ID =
      new SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE, "position-during-measurement", new SchemaVersion(1, 0));

  static const String SITTING = 'sitting';
  static const String LYING_DOWN = 'lying down';
  static const String STANDING = 'standing';

  PositionDuringMeasurement(schemaValue) : super(schemaValue);

  factory PositionDuringMeasurement.fromJson(Map<String, dynamic> json) => _$PositionDuringMeasurementFromJson(json);

  Map<String, dynamic> toJson() => _$PositionDuringMeasurementToJson(this);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}
