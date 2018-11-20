// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geoposition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Geoposition _$GeopositionFromJson(Map<String, dynamic> json) {
  return Geoposition(
      json['latitude'] == null
          ? null
          : PlaneAngleUnitValue.fromJson(
              json['latitude'] as Map<String, dynamic>),
      json['longitude'] == null
          ? null
          : PlaneAngleUnitValue.fromJson(
              json['longitude'] as Map<String, dynamic>),
      elevation: json['elevation'] == null
          ? null
          : LengthUnitValue.fromJson(json['elevation'] as Map<String, dynamic>),
      numberOfSatellitesInView: json['number_of_satellites_in_view'] as int,
      numberOfSatellitesInFix: json['number_of_satellites_in_fix'] as int,
      positioningSystem: json['positioning_system'] as String)
    ..effectiveTimeFrame = json['effective_time_frame'] == null
        ? null
        : TimeFrame.fromJson(
            json['effective_time_frame'] as Map<String, dynamic>)
    ..descriptiveStatistic = json['descriptive_statistic'] as String
    ..userNotes = json['user_notes'] as String;
}

Map<String, dynamic> _$GeopositionToJson(Geoposition instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  writeNotNull('latitude', instance.latitude);
  writeNotNull('longitude', instance.longitude);
  writeNotNull('elevation', instance.elevation);
  writeNotNull(
      'number_of_satellites_in_view', instance.numberOfSatellitesInView);
  writeNotNull('number_of_satellites_in_fix', instance.numberOfSatellitesInFix);
  writeNotNull('positioning_system', instance.positioningSystem);
  return val;
}

PlaneAngleUnitValue _$PlaneAngleUnitValueFromJson(Map<String, dynamic> json) {
  return PlaneAngleUnitValue(json['unit'] as String, json['value']);
}

Map<String, dynamic> _$PlaneAngleUnitValueToJson(PlaneAngleUnitValue instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('value', instance.value);
  writeNotNull('unit', instance.unit);
  return val;
}
