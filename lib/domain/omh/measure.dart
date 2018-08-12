import 'package:openmhealth_schemas/openmhealth_schemas.dart';

/// A base class for OMH measures that provides an extensible builder for common properties.
abstract class Measure extends Object with AdditionalPropertySupport implements SchemaSupport {
  TimeFrame effectiveTimeFrame;
  DescriptiveStatistic descriptiveStatistic;
  String userNotes;
}
