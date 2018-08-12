import 'package:openmhealth_schemas/openmhealth_schemas.dart';

/// A time frame, which is either a point in time or a time interval.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_time-frame">time-frame</a>
class TimeFrame extends Object with AdditionalPropertySupport implements SchemaSupport {
  static SchemaId SCHEMA_ID = new SchemaId(SchemaSupport.OMH_NAMESPACE, "time-frame", new SchemaVersion(1, 0));

  TimeInterval timeInterval;
  DateTime dateTime;

  TimeFrame({this.timeInterval, this.dateTime});

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// A time interval.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_time-interval">time-interval</a>
class TimeInterval extends Object with AdditionalPropertySupport implements SchemaSupport {
  static SchemaId SCHEMA_ID = new SchemaId(SchemaSupport.OMH_NAMESPACE, "time-interval", new SchemaVersion(1, 0));

  DateTime startDateTime;
  DateTime endDateTime;
  DurationUnitValue duration;
  DateTime date;
  PartOfDay partOfDay;

  /// All properties are optional (according to OMH specification).
  ///
  /// Note that e.g. [duration] is not automatically calculated based on start and end time.
  TimeInterval({this.startDateTime, this.endDateTime, this.duration, this.date, this.partOfDay});

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_duration-unit-value">duration-unit-value</a>
class DurationUnitValue extends TypedUnitValue<DurationUnit> {
  static SchemaId SCHEMA_ID = new SchemaId(SchemaSupport.OMH_NAMESPACE, "duration-unit-value", new SchemaVersion(1, 0));

  DurationUnitValue(DurationUnit unit, double value) : super(unit, value);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// A unit of duration.

/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_duration-unit-value">duration-unit-value</a>
class DurationUnit extends Unit {
  static SchemaId SCHEMA_ID = new SchemaId(SchemaSupport.OMH_NAMESPACE, "duration-unit-value", new SchemaVersion(1, 0));

  static const String PICOSECOND = 'ps';
  static const String NANOSECOND = 'ns';
  static const String MICROSECOND = 'us';
  static const String MILLISECOND = 'ms';
  static const String SECOND = 'sec';
  static const String MINUTE = 'min';
  static const String HOUR = 'h';
  static const String DAY = 'd';
  static const String WEEK = 'wk';
  static const String MONTH = 'mo';
  static const String YEAR = 'yr';

  DurationUnit(schemaValue) : super(schemaValue);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// The period of time in which a day is commonly divided.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_part-of-day">part-of-day</a>
class PartOfDay extends SchemaEnumValue implements SchemaSupport {
  static SchemaId SCHEMA_ID = new SchemaId(SchemaSupport.OMH_NAMESPACE, "part-of-day", new SchemaVersion(1, 0));

  static const String MORNING = 'MORNING';
  static const String AFTERNOON = 'AFTERNOON';
  static const String EVENING = 'EVENING';
  static const String NIGHT = 'NIGHT';

  PartOfDay(schemaValue) : super(schemaValue);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}
