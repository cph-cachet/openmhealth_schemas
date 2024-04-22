part of '../../openmhealth_schemas.dart';

/// An abstract class represent any OMH schema.
abstract class SchemaSupport {
  static const String OMH_NAMESPACE = 'omh';
  static const String CACHET_NAMESPACE = 'cachet';

  static const String ACCELERATION = 'acceleration';
  static const String ACTIVITY = 'physical-activity';
  static const String BLOOD_PRESSURE = 'blood-pressure';
  static const String SYSTOLIC_BLOOD_PRESSURE = 'systolic-blood-pressure';
  static const String DIASTOLIC_BLOOD_PRESSURE = 'diastolic-blood-pressure';
  static const String HEART_RATE = 'heart-rate';
  static const String RR_INTERVAL = 'rr-interval';
  static const String DATA_POINT = 'data-point';
  static const String GEOPOSITION = 'geoposition';
  static const String MEASURE = 'abstract-measure';
  static const String SCHEMA = 'schema';
  static const String SURVEY = 'survey';
  static const String SURVEY_ITEM = 'survey-item';
  static const String SURVEY_QUESTION = 'survey-question';
  static const String SURVEY_ANSWER = 'survey-answer';
  static const String TIME_FRAME = 'time-frame';
  static const String TIME_INTERVAL = 'time-interval';
  static const String UNITS = 'units';
  static const String STEP_COUNT = 'step-count';
  static const String CALORIES = 'calories-burned';
  static const String MINUTES_MODERATE_ACTIVITY = 'minutes-moderate-activity';

  /// The schema this class corresponds to
  SchemaId getSchemaId();
}

/// An abstract class represent schema enumerations.
abstract class SchemaEnumValue {
  ///The schema enumeration value
  String schemaValue;

  SchemaEnumValue(this.schemaValue);
}

/// A schema identifier. It consists of a namespace, a name, and a version. A schema identifier unambiguously identifies
/// a single, immutable schema. The namespace is used to avoid naming collisions in schemas written by different groups
/// or organisations.
///
/// Version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_schema-id">schema-id</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class SchemaId extends Object implements SchemaSupport, Comparable<SchemaId> {
  static final SchemaId SCHEMA_ID = SchemaId.withVersion(
      SchemaSupport.OMH_NAMESPACE,
      'schema-id',
      SchemaVersion(major: 1, minor: 0));

  final String namespace;
  final String name;
  final String version;

  @JsonKey(ignore: true)
  final SchemaVersion schemaVersion;

  SchemaId({
    required this.namespace,
    required this.name,
    required this.version,
  }) : schemaVersion = SchemaVersion.fromString(version);
  SchemaId.withVersion(this.namespace, this.name, this.schemaVersion)
      : version = schemaVersion.toString();

  factory SchemaId.fromJson(Map<String, dynamic> json) =>
      _$SchemaIdFromJson(json);
  Map<String, dynamic> toJson() => _$SchemaIdToJson(this);

  @override
  int compareTo(SchemaId other) {
    if (namespace.compareTo(other.namespace) != 0) {
      return namespace.compareTo(other.namespace);
    }

    if (name.compareTo(other.name) != 0) return name.compareTo(other.name);

    return schemaVersion.compareTo(other.schemaVersion);
  }

  @override
  SchemaId getSchemaId() => SCHEMA_ID;

  @override
  String toString() => '$namespace.$name.v$version';
}

/// A semantic schema version, consisting of a major number, minor number, and an optional qualifier.
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class SchemaVersion implements Comparable<SchemaVersion> {
  //static const Pattern QUALIFIER_PATTERN = Pattern.compile(QUALIFIER_PATTERN_STRING);
  //static const String VERSION_PATTERN_STRING = "(\\d+)\\.(\\d+)(?:\\.(" + QUALIFIER_PATTERN_STRING + "))?";
  //final Pattern VERSION_PATTERN = Pattern.compile(VERSION_PATTERN_STRING);

  static SchemaVersion V1_0 = SchemaVersion(major: 1, minor: 0);
  static SchemaVersion V2_0 = SchemaVersion(major: 2, minor: 0);

  int major = 1;
  int minor = 0;
  String? qualifier;

  //TODO : should check if this is a valid version - see original OMH Java implementation.
  SchemaVersion({
    this.major = 1,
    this.minor = 0,
    this.qualifier,
  });

  factory SchemaVersion.v10() => SchemaVersion(major: 1, minor: 0);

  SchemaVersion.fromString(String version) {
    var l = version.split('.');
    major = int.parse(l[0]);
    minor = int.parse(l[1]);
    qualifier = l[2];
  }

  factory SchemaVersion.fromJson(Map<String, dynamic> json) =>
      _$SchemaVersionFromJson(json);

  Map<String, dynamic> toJson() => _$SchemaVersionToJson(this);

  /// Check if [version] is a valid OMH schema.
  static bool isValidVersion(String version) {
    return (int.parse(version.split('.').first) > 0);
    // TODO : implement pattern match.
    //return version == null || VERSION_PATTERN.matcher(version).matches();
  }

  /// Compares this [ShemaVersion] to another.
  ///
  /// Returns a negative integer if [this] is a older version than [other],
  /// a positive integer if [this] a newer version than [other]
  /// and zero if they are the same version.
  @override
  int compareTo(SchemaVersion other) {
    if (major < other.major) return -1;
    if (major > other.major) return 1;
    if (minor < other.minor) return -1;
    if (minor > other.minor) return 1;
    if (qualifier == null) return 0;
    if (qualifier != null && other.qualifier == null) return -1;
    if (qualifier == null && other.qualifier != null) return 1;

    return qualifier!.compareTo(other.qualifier!);
  }

  @override
  String toString() =>
      '$major.$minor${(qualifier != null) ? '.$qualifier' : ''}';
}
