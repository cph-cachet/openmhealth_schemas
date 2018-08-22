import 'package:openmhealth_schemas/openmhealth_schemas.dart';

/// A person’s blood pressure as a combination of a systolic and a diastolic blood pressure.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_blood-pressure">blood-pressure</a>
class BloodPressure extends Measure {
  static SchemaId SCHEMA_ID = new SchemaId(SchemaSupport.OMH_NAMESPACE, "blood-pressure", new SchemaVersion(1, 0));

  SystolicBloodPressure systolicBloodPressure;
  DiastolicBloodPressure diastolicBloodPressure;
  PositionDuringMeasurement positionDuringMeasurement;

  /// Creates a [BloodPressure]. The [systolicBloodPressure] and [diastolicBloodPressure] are required according to the OMH definition.
  BloodPressure(this.systolicBloodPressure, this.diastolicBloodPressure, {this.positionDuringMeasurement});

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_systolic-blood-pressure">systolic-blood-pressure</a>
class SystolicBloodPressure extends TypedUnitValue<BloodPressureUnit> {
  static SchemaId SCHEMA_ID =
      new SchemaId(SchemaSupport.OMH_NAMESPACE, "systolic-blood-pressure", new SchemaVersion(1, 0));

  SystolicBloodPressure(BloodPressureUnit unit, value) : super(unit, value);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_diastolic-blood-pressure">diastolic-blood-pressure</a>
class DiastolicBloodPressure extends TypedUnitValue<BloodPressureUnit> {
  static SchemaId SCHEMA_ID =
      new SchemaId(SchemaSupport.OMH_NAMESPACE, "diastolic-blood-pressure", new SchemaVersion(1, 0));

  DiastolicBloodPressure(BloodPressureUnit unit, value) : super(unit, value);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// A unit of blood pressure.

/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_blood-pressure">blood-pressure</a>
class BloodPressureUnit extends Unit {
  static SchemaId SCHEMA_ID =
      new SchemaId(SchemaSupport.OMH_NAMESPACE, "blood-pressure-unit-value", new SchemaVersion(1, 0));

  static const String MM_OF_MERCURY = 'mmHg';

  BloodPressureUnit(schemaValue) : super(schemaValue);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// The position of a subject during a clinical measurement.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_position-during-measurement">position-during-measurement</a>
class PositionDuringMeasurement extends SchemaEnumValue implements SchemaSupport {
  static SchemaId SCHEMA_ID =
      new SchemaId(SchemaSupport.OMH_NAMESPACE, "position-during-measurement", new SchemaVersion(1, 0));

  static const String SITTING = 'sitting';
  static const String LYING_DOWN = 'lying down';
  static const String STANDING = 'standing';

  PositionDuringMeasurement(schemaValue) : super(schemaValue);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}
