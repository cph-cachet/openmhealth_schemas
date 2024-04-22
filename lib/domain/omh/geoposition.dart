part of '../../openmhealth_schemas.dart';

/// A geographic position measurement.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_geoposition">geoposition</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class Geoposition extends Measure {
  static SchemaId SCHEMA_ID = SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE,
      SchemaSupport.GEOPOSITION, SchemaVersion.V1_0);

  PlaneAngleUnitValue latitude;
  PlaneAngleUnitValue longitude;

  // TODO add accuracy
  LengthUnitValue? elevation;
  int? numberOfSatellitesInView;
  int? numberOfSatellitesInFix;
  //List<TypedUnitValue<SignalToNoiseRatioUnit>> satelliteSignalStrengths;
  String? positioningSystem;

  /// Creates a [Geoposition]. The [latitude] and [longitude] are required according to the OMH definition.
  Geoposition({
    required this.latitude,
    required this.longitude,
    this.elevation,
    this.numberOfSatellitesInView,
    this.numberOfSatellitesInFix,
    this.positioningSystem,
  });

  factory Geoposition.fromJson(Map<String, dynamic> json) =>
      _$GeopositionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$GeopositionToJson(this);

  @override
  SchemaId getSchemaId() => SCHEMA_ID;
}

/// A base class for unit value tuples.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_plane-angle-unit-value">plane-angle-unit-value</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class PlaneAngleUnitValue extends UnitValue {
  static SchemaId SCHEMA_ID = SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE,
      'plane-angle-unit-value', SchemaVersion.V1_0);

  PlaneAngleUnitValue({
    required String unit,
    required double value,
  }) : super(unit, value);

  factory PlaneAngleUnitValue.fromJson(Map<String, dynamic> json) =>
      _$PlaneAngleUnitValueFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PlaneAngleUnitValueToJson(this);

  @override
  SchemaId getSchemaId() => SCHEMA_ID;
}

/// A unit of an angle on a plane.

/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_plane-angle-unit-value">plane-angle-unit-value</a>
class PlaneAngleUnit extends Unit {
  static const String DEGREE_OF_ARC = 'deg';

  PlaneAngleUnit(super.schemaValue);
}

/// A system used to acquire positions.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_geoposition">geoposition</a>
class PositioningSystem {
  static const String GPS = 'GPS';
  static const String GLONASS = 'GLONASS';
  static const String GALILEO = 'Galileo';
  static const String BEIDOU = 'Beidou';
  static const String COMPASS = 'Compass';
  static const String IRNSS = 'IRNSS';
  static const String QZSS = 'QZSS';
}

/// A unit of a signal-to-noise ratio.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_geoposition">geoposition</a>
class SignalToNoiseRatioUnit extends Unit {
  static const String DECIBEL = 'dB';

  SignalToNoiseRatioUnit(super.schemaValue);
}
