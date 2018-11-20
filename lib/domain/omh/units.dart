import 'package:openmhealth_schemas/openmhealth_schemas.dart';
import 'package:json_annotation/json_annotation.dart';

part 'units.g.dart';

/// A marker interface for units of measure.
//@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
abstract class Unit extends SchemaEnumValue {
  Unit(String schemaValue) : super(schemaValue);
}

/// A base class for unit value tuples.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_unit-value">unit-value</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class UnitValue extends Object with AdditionalPropertySupport implements SchemaSupport {
  static SchemaId SCHEMA_ID =
      new SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE, "unit-value", new SchemaVersion(1, 0));

  double value;
  String unit;

  UnitValue(this.unit, this.value);

  factory UnitValue.fromJson(Map<String, dynamic> json) => _$UnitValueFromJson(json);

  Map<String, dynamic> toJson() => _$UnitValueToJson(this);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }

  @override
  String toString() {
    return getSchemaId().toString() + ' : {unit: $unit , value: $value}';
  }
}

/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_length-unit-value">length-unit-value</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class LengthUnitValue extends UnitValue {
  static SchemaId SCHEMA_ID =
      new SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE, "length-unit-value", new SchemaVersion(1, 0));

//  LengthUnitValue(LengthUnit unit, value) : super(unit.schemaValue, value);
  LengthUnitValue(String unit, value) : super(unit, value);

  factory LengthUnitValue.fromJson(Map<String, dynamic> json) => _$LengthUnitValueFromJson(json);
  Map<String, dynamic> toJson() => _$LengthUnitValueToJson(this);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// A unit of length.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_length-unit-value">length-unit-value</a>
class LengthUnit extends Unit {
  static const String FEMTOMETER = "fm";
  static const String PICOMETER = "pm";
  static const String NANOMETER = "nm";
  static const String MICROMETER = "um";
  static const String MILLIMETER = "mm";
  static const String CENTIMETER = "cm";
  static const String METER = "m";
  static const String KILOMETER = "km";
  static const String INCH = "in";
  static const String FOOT = "ft";
  static const String YARD = "yd";
  static const String MILE = "mi";

  LengthUnit(String schemaValue) : super(schemaValue);
}
