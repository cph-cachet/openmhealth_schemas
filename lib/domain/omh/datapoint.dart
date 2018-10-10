import 'package:openmhealth_schemas/openmhealth_schemas.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';

part 'datapoint.g.dart';

/// An OMH data point
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_data-point">data-point</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class DataPoint implements SchemaSupport {
  static SchemaId SCHEMA_ID =
      new SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE, "data-point", new SchemaVersion(1, 0));

  DataPointHeader header;
  Measure body;

  /// Creates a [DataPoint] encapsulating OMH schema data specified in [body].
  DataPoint(Measure body, {String userId, DataPointAcquisitionProvenance provenance}) {
    String id = new Uuid().v1(); // Generates a time-based version 1 UUID.
    DateTime now = new DateTime.now();

    DataPointHeader header =
        new DataPointHeader(id, now, body.getSchemaId(), userId: userId, acquisitionProvenance: provenance);

    this.header = header;
    this.body = body;
  }

  factory DataPoint.fromJson(Map<String, dynamic> json) => _$DataPointFromJson(json);
  Map<String, dynamic> toJson() => _$DataPointToJson(this);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// The header of a data point
///
/// OMH version 1.1
/// See  @see <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_header">header</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class DataPointHeader implements SchemaSupport {
  static SchemaId SCHEMA_ID = new SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE, "header", new SchemaVersion(1, 1));

  String id;
  DateTime creationDateTime;
  SchemaId schemaId;
  DataPointAcquisitionProvenance acquisitionProvenance;
  String userId;

  /// Creates a [DataPointHeader]. The [id], [creationDateTime], and [bodySchemaId] are required.
  /// Note, however, that normally you would not create a [DataPointHeader], but instead create a [DataPoint],
  /// which takes care of creating its own header.
  DataPointHeader(this.id, this.creationDateTime, this.schemaId, {this.userId, this.acquisitionProvenance});

  factory DataPointHeader.fromJson(Map<String, dynamic> json) => _$DataPointHeaderFromJson(json);

  Map<String, dynamic> toJson() => _$DataPointHeaderToJson(this);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// The acquisition provenance of a data point, representing how and when the data point was acquired.
///
/// OMH version 1.0
/// See  @see <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_header">header</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class DataPointAcquisitionProvenance {
  String sourceName;
  DateTime sourceCreationDateTime;
  String modality;

  /// Creates a [DataPointAcquisitionProvenance]. The [sourceName] is required according to the OMH definition.
  DataPointAcquisitionProvenance(this.sourceName, {this.modality, this.sourceCreationDateTime});

  factory DataPointAcquisitionProvenance.fromJson(Map<String, dynamic> json) =>
      _$DataPointAcquisitionProvenanceFromJson(json);

  Map<String, dynamic> toJson() => _$DataPointAcquisitionProvenanceToJson(this);
}

/// The modality of a data point. The modality represents whether the data point was sensed by a device or
/// application, or whether it was reported by a person.
///
/// OMH version 1.0
/// See  @see <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_header">header</a>
class DataPointModality {
  static const String SENSED = "sensed";
  static const String SELF_REPORTED = "self-reported";
}
