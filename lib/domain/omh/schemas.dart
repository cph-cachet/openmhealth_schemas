import 'package:json_annotation/json_annotation.dart';

part 'schemas.g.dart';

/// An abstract class represent any OMH schema.
abstract class SchemaSupport {
  static const String OMH_NAMESPACE = "omh";
  static const String CACHET_NAMESPACE = "cachet";

  /// The schema this class corresponds to
  SchemaId getSchemaId();
}

/// An abstract class represent schema enumerations.
abstract class SchemaEnumValue {
  ///The schema enumeration value
  String schemaValue;

  SchemaEnumValue(this.schemaValue);
}

/**
 * A schema identifier. It consists of a namespace, a name, and a version. A schema identifier unambiguously identifies
 * a single, immutable schema. The namespace is used to avoid naming collisions in schemas written by different groups
 * or organisations.
 *
 * Version 1.0
 * See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_schema-id">schema-id</a>
 */
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class SchemaId extends Object implements SchemaSupport, Comparable<SchemaId> {
  static SchemaId SCHEMA_ID =
      new SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE, "schema-id", new SchemaVersion(1, 0));

  String namespace;
  String name;
  String version;

  @JsonKey(ignore: true)
  SchemaVersion schemaVersion;

  SchemaId(this.namespace, this.name, this.version) : this.schemaVersion = new SchemaVersion.fromString(version);
  SchemaId.withVersion(this.namespace, this.name, this.schemaVersion) : this.version = schemaVersion.toString();

  factory SchemaId.fromJson(Map<String, dynamic> json) => _$SchemaIdFromJson(json);
  Map<String, dynamic> toJson() => _$SchemaIdToJson(this);

  @override
  int compareTo(SchemaId other) {
    if (namespace.compareTo(other.namespace) != 0) {
      return namespace.compareTo(other.namespace);
    }

    if (name.compareTo(other.name) != 0) {
      return name.compareTo(other.name);
    }

    return schemaVersion.compareTo(other.schemaVersion);
  }

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }

  @override
  String toString() {
    return '$namespace.$name.v$version';
  }
}

/// A semantic schema version, consisting of a major number, minor number, and an optional qualifier.
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class SchemaVersion implements Comparable<SchemaVersion> {
  //static const Pattern QUALIFIER_PATTERN = Pattern.compile(QUALIFIER_PATTERN_STRING);
  //static const String VERSION_PATTERN_STRING = "(\\d+)\\.(\\d+)(?:\\.(" + QUALIFIER_PATTERN_STRING + "))?";
  //final Pattern VERSION_PATTERN = Pattern.compile(VERSION_PATTERN_STRING);

  int major;
  int minor;
  String qualifier;

  SchemaVersion(this.major, this.minor, {this.qualifier}) {
    //TODO : should check if this is a valid version - see original OMH Java implementation.
  }

  SchemaVersion.fromString(String version) {
    //TODO : implement
  }

  factory SchemaVersion.fromJson(Map<String, dynamic> json) => _$SchemaVersionFromJson(json);

  Map<String, dynamic> toJson() => _$SchemaVersionToJson(this);

  /// Check if [version] is a valid OMH schema.
  static bool isValidVersion(String version) {
    return version == null;
    // TODO : implement pattern match.
    //return version == null || VERSION_PATTERN.matcher(version).matches();
  }

  /// Compares this [ShemaVersion] to another.
  ///
  /// Returns a negative integer if [this] is a older version than [other], a positive integer if [this] a newer version than [other]
  /// and zero if they are the same version.

  @override
  int compareTo(SchemaVersion other) {
    if (major < other.major) {
      return -1;
    }
    if (major > other.major) {
      return 1;
    }

    if (minor < other.minor) {
      return -1;
    }
    if (minor > other.minor) {
      return 1;
    }

    if (qualifier != null && other.qualifier == null) {
      return -1;
    }
    if (qualifier == null && other.qualifier != null) {
      return 1;
    }
    if (qualifier == null) {
      return 0;
    }
    return qualifier.compareTo(other.qualifier);
  }

  @override
  String toString() {
    String str = (major != null) ? '$major' : '';
    str += (minor != null) ? '.$minor' : '';
    str += (qualifier != null) ? '.$qualifier' : '';

    return str;
  }
}
