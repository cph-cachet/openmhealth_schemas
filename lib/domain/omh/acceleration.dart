part of '../../openmhealth_schemas.dart';

/// This schema represents accelerometer measurements.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_acceleration">acceleration</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class Acceleration extends Measure {
  static SchemaId SCHEMA_ID = SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE,
      SchemaSupport.ACCELERATION, SchemaVersion.V1_0);

  AccelerationUnitValue acceleration_x;
  AccelerationUnitValue acceleration_y;
  AccelerationUnitValue? acceleration_z;
  String? sensor_body_location;

  Acceleration({
    required this.acceleration_x,
    required this.acceleration_y,
    this.acceleration_z,
    this.sensor_body_location,
  });

  factory Acceleration.fromJson(Map<String, dynamic> json) =>
      _$AccelerationFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$AccelerationToJson(this);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_acceleration-unit-value">acceleration-unit-value</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class AccelerationUnitValue extends UnitValue {
  static SchemaId SCHEMA_ID = SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE,
      'acceleration-unit-value', SchemaVersion.V1_0);

  AccelerationUnitValue({
    required String unit,
    required double value,
  }) : super(unit, value);

  factory AccelerationUnitValue.fromJson(Map<String, dynamic> json) =>
      _$AccelerationUnitValueFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$AccelerationUnitValueToJson(this);

  @override
  SchemaId getSchemaId() => SCHEMA_ID;
}

/// A unit of acceleration.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_geoposition">geoposition</a>
class AccelerationUnit extends Unit {
  static const String M_S2 = 'm/s^2';

  AccelerationUnit(super.schemaValue);
}

/// A location on the body. Values from the Anatomical or acquired body structure hierarchy of SNOMED can be added as needed.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_body-location">body-location</a>
class BodyLocation {
  static const String LEFT_ANKLE = 'left ankle';
  static const String RIGHT_ANKLE = 'right ankle';
  static const String LEFT_HIP = 'left hip';
  static const String RIGHT_HIP = 'right hip';
  static const String LEFT_THIGH = 'left thigh';
  static const String RIGH_THIGH = 'right thigh';
  static const String LEFT_THORAX = 'left thorax';
  static const String MIDDLE_LEFT_THORAX = 'middle left thorax';
  static const String LEFT_UPPER_ARM = 'left upper arm';
  static const String RIGHT_UPPER_ARM = 'right upper arm';
  static const String LEFT_WRIST = 'left wrist';
  static const String RIGHT_WRIST = 'right wrist';
}
