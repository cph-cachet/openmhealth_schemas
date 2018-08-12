abstract class SchemaSupport {
  static const String OMH_NAMESPACE = "omh";
  static const String CACHET_NAMESPACE = "cachet";

  /// The schema this class corresponds to
  SchemaId getSchemaId();
}

/**
 * A schema identifier. It consists of a namespace, a name, and a version. A schema identifier unambiguously identifies
 * a single, immutable schema. The namespace is used to avoid naming collisions in schemas written by different groups
 * or organisations.
 *
 * Version 1.0
 * See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_schema-id">schema-id</a>
 */
class SchemaId implements Comparable<SchemaId>, SchemaSupport {
  static SchemaId SCHEMA_ID = new SchemaId(SchemaSupport.OMH_NAMESPACE, "schema-id", new SchemaVersion(1, 1));

  String namespace;
  String name;
  SchemaVersion version;

  SchemaId(this.namespace, this.name, this.version) : super();

  @override
  int compareTo(SchemaId other) {
    if (namespace.compareTo(other.namespace) != 0) {
      return namespace.compareTo(other.namespace);
    }

    if (name.compareTo(other.name) != 0) {
      return name.compareTo(other.name);
    }

    return version.compareTo(other.version);
  }

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// A semantic schema version, consisting of a major number, minor number, and an optional qualifier.
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
    String str = (major != null) ? major : '';
    str += (minor != null) ? '.$minor' : '';
    str += (qualifier != null) ? '.$qualifier' : '';

    return str;
  }
}

/// An mixin class for schema classes that support additional properties.
abstract class AdditionalPropertySupport {
  Map<String, Object> _additionalProperties = new Map();

  /// Sets an additional property.
  void setAdditionalProperty(String path, Object value) {
    //TODO : In the original OMH Java class it is stated that "This method supports dot-separated paths by creating nested maps when necessary." Is not implemented here.
    _additionalProperties[path] = value;
  }

  /// Gets an additional property.
  Object getAdditionalProperty(String name) {
    return _additionalProperties[name];
  }

  /// Gets the additional properties.
  Map<String, Object> getAdditionalProperties() {
    return _additionalProperties;
  }
}
