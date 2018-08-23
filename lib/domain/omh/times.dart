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
  PartOfDay partOfDay;

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
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class DurationUnit extends Unit {
  static SchemaId SCHEMA_ID =
      new SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE, "duration-unit-value", new SchemaVersion(1, 0));

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

  factory DurationUnit.fromJson(Map<String, dynamic> json) => _$DurationUnitFromJson(json);

  Map<String, dynamic> toJson() => _$DurationUnitToJson(this);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// The period of time in which a day is commonly divided.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_part-of-day">part-of-day</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class PartOfDay extends SchemaEnumValue implements SchemaSupport {
  static SchemaId SCHEMA_ID =
      new SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE, "part-of-day", new SchemaVersion(1, 0));

  static const String MORNING = 'MORNING';
  static const String AFTERNOON = 'AFTERNOON';
  static const String EVENING = 'EVENING';
  static const String NIGHT = 'NIGHT';

  PartOfDay(schemaValue) : super(schemaValue);

  factory PartOfDay.fromJson(Map<String, dynamic> json) => _$PartOfDayFromJson(json);

  Map<String, dynamic> toJson() => _$PartOfDayToJson(this);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}
