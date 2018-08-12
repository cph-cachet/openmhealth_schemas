import 'package:openmhealth_schemas/openmhealth_schemas.dart';

/// A descriptive statistic of a set of measurements.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_descriptive-statistic">descriptive-statistic</a>
class DescriptiveStatistic implements SchemaEnumValue, SchemaSupport {
  static SchemaId SCHEMA_ID =
      new SchemaId(SchemaSupport.OMH_NAMESPACE, "descriptive-statistic", new SchemaVersion(1, 0));

  static const String AVERAGE = 'AVERAGE';
  static const String MAXIMUM = 'MAXIMUM';
  static const String MINIMUM = 'MINIMUM';
  static const String STANDARD_DEVIATION = 'STANDARD_DEVIATION';
  static const String VARIANCE = 'VARIANCE';
  static const String SUM = 'SUM';
  static const String MEDIAN = 'MEDIAN';

  String schemaValue;

  DescriptiveStatistic(this.schemaValue);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }

  @override
  String getSchemaValue() {
    return schemaValue;
  }
}
