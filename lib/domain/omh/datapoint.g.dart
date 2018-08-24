// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datapoint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataPoint _$DataPointFromJson(Map<String, dynamic> json) {
  return DataPoint(json['body'] == null
      ? null
      : Measure.fromJson(json['body'] as Map<String, dynamic>))
    ..header = json['header'] == null
        ? null
        : DataPointHeader.fromJson(json['header'] as Map<String, dynamic>);
}

Map<String, dynamic> _$DataPointToJson(DataPoint instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('header', instance.header);
  writeNotNull('body', instance.body);
  return val;
}

DataPointHeader _$DataPointHeaderFromJson(Map<String, dynamic> json) {
  return DataPointHeader(
      json['id'] as String,
      json['creation_date_time'] == null
          ? null
          : DateTime.parse(json['creation_date_time'] as String),
      json['schema_id'] == null
          ? null
          : SchemaId.fromJson(json['schema_id'] as Map<String, dynamic>),
      userId: json['user_id'] as String,
      acquisitionProvenance: json['acquisition_provenance'] == null
          ? null
          : DataPointAcquisitionProvenance.fromJson(
              json['acquisition_provenance'] as Map<String, dynamic>));
}

Map<String, dynamic> _$DataPointHeaderToJson(DataPointHeader instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'creation_date_time', instance.creationDateTime?.toIso8601String());
  writeNotNull('schema_id', instance.schemaId);
  writeNotNull('acquisition_provenance', instance.acquisitionProvenance);
  writeNotNull('user_id', instance.userId);
  return val;
}

DataPointAcquisitionProvenance _$DataPointAcquisitionProvenanceFromJson(
    Map<String, dynamic> json) {
  return DataPointAcquisitionProvenance(json['source_name'] as String,
      modality: json['modality'] as String,
      sourceCreationDateTime: json['source_creation_date_time'] == null
          ? null
          : DateTime.parse(json['source_creation_date_time'] as String));
}

Map<String, dynamic> _$DataPointAcquisitionProvenanceToJson(
    DataPointAcquisitionProvenance instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('source_name', instance.sourceName);
  writeNotNull('source_creation_date_time',
      instance.sourceCreationDateTime?.toIso8601String());
  writeNotNull('modality', instance.modality);
  return val;
}
