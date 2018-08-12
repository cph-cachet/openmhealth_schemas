import 'package:openmhealth_schemas/openmhealth_schemas.dart';

/// A geographic position measurement.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_geoposition">geoposition</a>
class Geoposition extends Measure {
  static SchemaId SCHEMA_ID = new SchemaId(SchemaSupport.OMH_NAMESPACE, "geoposition", new SchemaVersion(1, 0));

  PlaneAngleUnitValue latitude;
  PlaneAngleUnitValue longitude;

  // TODO add accuracy
  LengthUnitValue elevation;
  int numberOfSatellitesInView;
  int numberOfSatellitesInFix;
  List<TypedUnitValue<SignalToNoiseRatioUnit>> satelliteSignalStrengths;
  PositioningSystem positioningSystem;

  Geoposition(
      {this.latitude,
      this.longitude,
      this.elevation,
      this.numberOfSatellitesInView,
      this.numberOfSatellitesInFix,
      this.positioningSystem});

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// A base class for unit value tuples.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_plane-angle-unit-value">plane-angle-unit-value</a>
class PlaneAngleUnitValue extends TypedUnitValue<PlaneAngleUnit> {
  static SchemaId SCHEMA_ID =
      new SchemaId(SchemaSupport.OMH_NAMESPACE, "plane-angle-unit-value", new SchemaVersion(1, 0));

  PlaneAngleUnitValue(unit, value) : super(unit, value);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// A unit of an angle on a plane.

/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_plane-angle-unit-value">plane-angle-unit-value</a>
class PlaneAngleUnit implements Unit {
  static SchemaId SCHEMA_ID =
      new SchemaId(SchemaSupport.OMH_NAMESPACE, "plane-angle-unit-value", new SchemaVersion(1, 0));

  static const String DEGREE_OF_ARC = 'deg';

  String schemaValue;

  PlaneAngleUnit(this.schemaValue);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }

  @override
  String getSchemaValue() {
    return schemaValue;
  }
}

/// A system used to acquire positions.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_geoposition">geoposition</a>
class PositioningSystem implements SchemaEnumValue {
  static SchemaId SCHEMA_ID = new SchemaId(SchemaSupport.OMH_NAMESPACE, "geoposition", new SchemaVersion(1, 0));

  static const String GPS = "GPS";
  static const String GLONASS = "GLONASS";
  static const String GALILEO = "Galileo";
  static const String BEIDOU = "Beidou";
  static const String COMPASS = "Compass";
  static const String IRNSS = "IRNSS";
  static const String QZSS = "QZSS";

  String schemaValue;

  PositioningSystem(this.schemaValue);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }

  @override
  String getSchemaValue() {
    return schemaValue;
  }
}

/// A unit of a signal-to-noise ratio.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_geoposition">geoposition</a>
class SignalToNoiseRatioUnit implements Unit {
  static SchemaId SCHEMA_ID =
      new SchemaId(SchemaSupport.OMH_NAMESPACE, "plane-angle-unit-value", new SchemaVersion(1, 0));

  static const String DECIBEL = 'dB';

  String schemaValue;

  SignalToNoiseRatioUnit(this.schemaValue);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }

  @override
  String getSchemaValue() {
    return schemaValue;
  }
}
