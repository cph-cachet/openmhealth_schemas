import 'package:openmhealth_schemas/openmhealth_schemas.dart';

/// A descriptive statistic of a set of measurements.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_descriptive-statistic">descriptive-statistic</a>
class DescriptiveStatistic extends SchemaEnumValue implements SchemaSupport {
  static SchemaId SCHEMA_ID =
      new SchemaId(SchemaSupport.OMH_NAMESPACE, "descriptive-statistic", new SchemaVersion(1, 0));

  static const String AVERAGE = 'AVERAGE';
  static const String MAXIMUM = 'MAXIMUM';
  static const String MINIMUM = 'MINIMUM';
  static const String STANDARD_DEVIATION = 'STANDARD_DEVIATION';
  static const String VARIANCE = 'VARIANCE';
  static const String SUM = 'SUM';
  static const String MEDIAN = 'MEDIAN';

  DescriptiveStatistic(schemaValue) : super(schemaValue);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// A denominator used by by a descriptive statistic when applied to a measure with an implicit duration.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_descriptive-statistic-denominator">descriptive-statistic-denominator</a>
class DescriptiveStatisticDenominator extends SchemaEnumValue implements SchemaSupport {
  static SchemaId SCHEMA_ID =
      new SchemaId(SchemaSupport.OMH_NAMESPACE, "descriptive-statistic-denominator", new SchemaVersion(1, 0));

  static const String DAY = 'DAY';
  static const String EPISODE = 'EPISODE';
  static const String MEAL = 'MEAL';
  static const String SESSION = 'SESSION';

  DescriptiveStatisticDenominator(schemaValue) : super(schemaValue);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}
