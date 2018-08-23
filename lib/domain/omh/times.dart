import 'package:openmhealth_schemas/openmhealth_schemas.dart';
import 'package:json_annotation/json_annotation.dart';

part 'times.g.dart';

/// A time frame, which is either a point in time or a time interval.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_time-frame">time-frame</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class TimeFrame extends Object with AdditionalPropertySupport implements SchemaSupport {
  static SchemaId SCHEMA_ID =
      new SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE, "time-frame", new SchemaVersion(1, 0));

  TimeInterval timeInterval;
  DateTime dateTime;

  TimeFrame({this.timeInterval, this.dateTime});

  factory TimeFrame.fromJson(Map<String, dynamic> json) => _$TimeFrameFromJson(json);

  Map<String, dynamic> toJson() => _$TimeFrameToJson(this);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// A time interval.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_time-interval">time-interval</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class TimeInterval extends Object with AdditionalPropertySupport implements SchemaSupport {
  static SchemaId SCHEMA_ID =
      new SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE, "time-interval", new SchemaVersion(1, 0));

  DateTime startDateTime;
  DateTime endDateTime;
  DurationUnitValue duration;
  DateTime date;
  String partOfDay;

  /// All properties are optional (according to OMH specification).
  ///
  /// Note that e.g. [duration] is not automatically calculated based on start and end time.
  TimeInterval({this.startDateTime, this.endDateTime, this.duration, this.date, this.partOfDay});

  factory TimeInterval.fromJson(Map<String, dynamic> json) => _$TimeIntervalFromJson(json);

  Map<String, dynamic> toJson() => _$TimeIntervalToJson(this);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_duration-unit-value">duration-unit-value</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class DurationUnitValue extends UnitValue {
  static SchemaId SCHEMA_ID =
      new SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE, "duration-unit-value", new SchemaVersion(1, 0));

  DurationUnitValue(String unit, double value) : super(unit, value);

  factory DurationUnitValue.fromJson(Map<String, dynamic> json) => _$DurationUnitValueFromJson(json);

  Map<String, dynamic> toJson() => _$DurationUnitValueToJson(this);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// A unit of duration.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_duration-unit-value">duration-unit-value</a>
class DurationUnit extends Unit {
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
}

/// Week days.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_day-of-week">day-of-week</a>
class DayOfWeek extends SchemaEnumValue {
  static const String MONDAY = "Monday";
  static const String TUESDAY = "Tuesday";
  static const String WEDNESDAY = "Wednesday";
  static const String THURSDAY = "Thursday";
  static const String FRIDAY = "Friday";
  static const String SATURDAY = "Saturday";
  static const String SUNDAY = "Sunday";

  DayOfWeek(schemaValue) : super(schemaValue);
}

/// The period of time in which a day is commonly divided.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_part-of-day">part-of-day</a>
class PartOfDay extends SchemaEnumValue {
  static const String MORNING = 'MORNING';
  static const String AFTERNOON = 'AFTERNOON';
  static const String EVENING = 'EVENING';
  static const String NIGHT = 'NIGHT';

  PartOfDay(schemaValue) : super(schemaValue);
}

/// This schema represents the temporal relationship of a clinical measure or assessment to meals (e.g., fasting, after lunch).
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_temporal-relationship-to-meal">temporal-relationship-to-meal</a>
class TemporalRelationshipToMeal extends SchemaEnumValue {
  static const String FASTING = "fasting";
  static const String NOT_FASTING = "not fasting";
  static const String BEFORE_MEAL = "before meal";
  static const String AFTER_MEAL = "after meal";
  static const String BEORE_BREAKFAST = "before breakfast";
  static const String AFTER_BREAKFAST = "after breakfast";
  static const String BEFORE_LUNCH = "before lunch";
  static const String AFTER_LUNCH = "after lunch";
  static const String BEFORE_DINNER = "before dinner";
  static const String AFTER_DINNER = "after dinner";
  static const String TWO_HOURS_POST_PRANDIAL = "2 hours postprandial";
  static const String WITH_MEAL = "with meal";
  static const String WITH_FOOD = "with food";

  TemporalRelationshipToMeal(schemaValue) : super(schemaValue);
}

/// This schema represents the temporal relationship of a clinical measure or assessment to physical activity (e.g., at rest, during exercise).
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_temporal-relationship-to-physical-activity">temporal-relationship-to-physical-activity</a>
class TemporalRelationshipToPhysicalActivity extends SchemaEnumValue {
  static const String AT_REST = "at rest";
  static const String ACTIVE = "active";
  static const String BEFORE_EXERCISE = "before exercise";
  static const String AFTER_EXERCISE = "after exercise";
  static const String DURING_EXERCISE = "during exercise";

  TemporalRelationshipToPhysicalActivity(schemaValue) : super(schemaValue);
}

/// This schema represents the temporal relationship of a clinical measure or assessment to sleep (e.g., before sleeping, on waking).
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_temporal-relationship-to-sleep">temporal-relationship-to-sleep</a>
class TemporalRelationshipToSleep extends SchemaEnumValue {
  static const String BEFORE_SLEEPING = "before sleeping";
  static const String DURING_SLEEPING = "during sleep";
  static const String ON_WAKING = "on waking";

  TemporalRelationshipToSleep(schemaValue) : super(schemaValue);
}
