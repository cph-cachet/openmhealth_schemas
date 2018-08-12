import 'package:openmhealth_schemas/openmhealth_schemas.dart';

/// An abstract class represent schema enumerations.
abstract class SchemaEnumValue {
  ///The schema enumeration value
  String schemaValue;

  SchemaEnumValue(this.schemaValue);
}

/// A marker interface for units of measure.
abstract class Unit extends SchemaEnumValue implements SchemaSupport {
  Unit(String schemaValue) : super(schemaValue);
}

/// A base class for unit value tuples.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_unit-value">unit-value</a>
class UnitValue extends Object with AdditionalPropertySupport implements SchemaSupport {
  static SchemaId SCHEMA_ID = new SchemaId(SchemaSupport.OMH_NAMESPACE, "unit-value", new SchemaVersion(1, 0));

  String unit;
  double value;

  UnitValue(this.unit, this.value);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }

  @override
  String toString() {
    return getSchemaId().toString() + ' : {unit: $unit , value: $value}';
  }
}

///A unit value implementation that uses a Java enum to represent units.
class TypedUnitValue<T extends Unit> extends UnitValue {
  T typedUnit;

  TypedUnitValue(T unit, value) : super(unit.schemaValue, value);
}

/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_length-unit-value">length-unit-value</a>
class LengthUnitValue extends TypedUnitValue<LengthUnit> implements SchemaSupport {
  static SchemaId SCHEMA_ID = new SchemaId(SchemaSupport.OMH_NAMESPACE, "length-unit-value", new SchemaVersion(1, 0));

  LengthUnitValue(LengthUnit unit, value) : super(unit, value);

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
  static SchemaId SCHEMA_ID = new SchemaId(SchemaSupport.OMH_NAMESPACE, "length-unit-value", new SchemaVersion(1, 0));

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

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}
