// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schemas.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SchemaId _$SchemaIdFromJson(Map<String, dynamic> json) {
  return SchemaId(json['namespace'] as String, json['name'] as String,
      json['version'] as String);
}

Map<String, dynamic> _$SchemaIdToJson(SchemaId instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('namespace', instance.namespace);
  writeNotNull('name', instance.name);
  writeNotNull('version', instance.version);
  return val;
}

SchemaVersion _$SchemaVersionFromJson(Map<String, dynamic> json) {
  return SchemaVersion(json['major'] as int, json['minor'] as int,
      qualifier: json['qualifier'] as String);
}

Map<String, dynamic> _$SchemaVersionToJson(SchemaVersion instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('major', instance.major);
  writeNotNull('minor', instance.minor);
  writeNotNull('qualifier', instance.qualifier);
  return val;
}
