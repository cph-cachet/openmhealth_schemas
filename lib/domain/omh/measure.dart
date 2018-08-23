import 'package:openmhealth_schemas/openmhealth_schemas.dart';
import 'package:json_annotation/json_annotation.dart';

part 'measure.g.dart';

/// A base class for OMH measures that provides an extensible builder for common properties.
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class Measure extends Object with AdditionalPropertySupport implements SchemaSupport {
  static SchemaId SCHEMA_ID =
      new SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE, "abstract-measure", new SchemaVersion(1, 0));

  TimeFrame effectiveTimeFrame;
  String descriptiveStatistic;
  String userNotes;

  Measure() : super();

  factory Measure.fromJson(Map<String, dynamic> json) => _$MeasureFromJson(json);

  Map<String, dynamic> toJson() => _$MeasureToJson(this);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// An mixin class for schema classes that support additional properties.
//@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
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

  //factory AdditionalPropertySupport.fromJson(Map<String, dynamic> json) => _$AdditionalPropertySupportFromJson(json);

  //Map<String, dynamic> toJson() => _$AdditionalPropertySupportToJson(this);
}
