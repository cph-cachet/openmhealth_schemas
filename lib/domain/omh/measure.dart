part of '../../openmhealth_schemas.dart';

/// A base class for OMH measures that provides an extensible builder for
/// common properties.
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class Measure extends Object
    with AdditionalPropertySupport
    implements SchemaSupport {
  static SchemaId SCHEMA_ID = SchemaId.withVersion(
      SchemaSupport.OMH_NAMESPACE, SchemaSupport.MEASURE, SchemaVersion.V1_0);

  TimeFrame? effectiveTimeFrame;
  String? descriptiveStatistic;
  String? userNotes;

  Measure({
    this.effectiveTimeFrame,
    this.descriptiveStatistic,
    this.userNotes,
  }) : super();

  factory Measure.fromJson(Map<String, dynamic> json) =>
      _$MeasureFromJson(json);

  Map<String, dynamic> toJson() => _$MeasureToJson(this);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// An mixin class for schema classes that support additional properties.
mixin AdditionalPropertySupport {
  final Map<String, Object> _additionalProperties = {};

  /// Sets an additional property.
  void setAdditionalProperty(String path, Object value) {
    //TODO : In the original OMH Java class it is stated that "This method supports dot-separated paths by creating nested maps when necessary." Is not implemented here.
    _additionalProperties[path] = value;
  }

  /// Gets an additional property.
  Object? getAdditionalProperty(String name) => _additionalProperties[name];

  /// Gets the additional properties.
  Map<String, Object> getAdditionalProperties() => _additionalProperties;
}
