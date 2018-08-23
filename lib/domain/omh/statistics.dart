/// A descriptive statistic of a set of measurements.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_descriptive-statistic">descriptive-statistic</a>
class DescriptiveStatistic {
  static const String AVERAGE = 'average';
  static const String MAXIMUM = 'maximum';
  static const String MINIMUM = 'minimum';
  static const String STANDARD_DEVIATION = 'standard deviation';
  static const String VARIANCE = 'variance';
  static const String SUM = 'sum';
  static const String MEDIAN = 'median';
}

/// A denominator used by by a descriptive statistic when applied to a measure with an implicit duration.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_descriptive-statistic-denominator">descriptive-statistic-denominator</a>
class DescriptiveStatisticDenominator {
  static const String DAY = 'day';
  static const String EPISODE = 'episode';
  static const String MEAL = 'meal';
  static const String SESSION = 'session';
}
