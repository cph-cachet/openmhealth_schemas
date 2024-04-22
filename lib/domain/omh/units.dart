part of '../../openmhealth_schemas.dart';

/// A marker interface for units of measure.
//@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
abstract class Unit extends SchemaEnumValue {
  Unit(super.schemaValue);
}

/// A base class for unit value tuples.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_unit-value">unit-value</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class UnitValue extends Object
    with AdditionalPropertySupport
    implements SchemaSupport {
  static SchemaId SCHEMA_ID = SchemaId.withVersion(
      SchemaSupport.OMH_NAMESPACE, 'unit-value', SchemaVersion.V1_0);

  final double value;
  final String unit;

  UnitValue(this.unit, this.value);

  factory UnitValue.fromJson(Map<String, dynamic> json) =>
      _$UnitValueFromJson(json);

  Map<String, dynamic> toJson() => _$UnitValueToJson(this);

  @override
  SchemaId getSchemaId() => SCHEMA_ID;

  @override
  String toString() =>
      getSchemaId().toString() + ' : {unit: $unit , value: $value}';
}

/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_length-unit-value">length-unit-value</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class LengthUnitValue extends UnitValue {
  static SchemaId SCHEMA_ID = SchemaId.withVersion(
      SchemaSupport.OMH_NAMESPACE, 'length-unit-value', SchemaVersion.V1_0);

  LengthUnitValue(super.unit, super.value);

  factory LengthUnitValue.fromJson(Map<String, dynamic> json) =>
      _$LengthUnitValueFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$LengthUnitValueToJson(this);

  @override
  SchemaId getSchemaId() => SCHEMA_ID;
}

/// A unit of length.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_length-unit-value">length-unit-value</a>
class LengthUnit extends Unit {
  static const String FEMTOMETER = 'fm';
  static const String PICOMETER = 'pm';
  static const String NANOMETER = 'nm';
  static const String MICROMETER = 'um';
  static const String MILLIMETER = 'mm';
  static const String CENTIMETER = 'cm';
  static const String METER = 'm';
  static const String KILOMETER = 'km';
  static const String INCH = 'in';
  static const String FOOT = 'ft';
  static const String YARD = 'yd';
  static const String MILE = 'mi';

  LengthUnit(super.schemaValue);
}
