import 'package:openmhealth_schemas/openmhealth_schemas.dart';
import 'dart:convert';

void main() {
  // Creating a [BloodPressure] similar to the one shown at
  // http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_blood-pressure
  BloodPressure bp = new BloodPressure(new SystolicBloodPressure(BloodPressureUnit.MM_OF_MERCURY, 160.0),
      new DiastolicBloodPressure(BloodPressureUnit.MM_OF_MERCURY, 60.0),
      positionDuringMeasurement: PositionDuringMeasurement.SITTING);
  DateTime start = new DateTime(2016, 2, 5);
  DateTime end = new DateTime(2016, 6, 5);
  TimeInterval time = new TimeInterval(startDateTime: start, endDateTime: end);
  bp.effectiveTimeFrame = new TimeFrame(timeInterval: time);
  bp.descriptiveStatistic = DescriptiveStatistic.MAXIMUM;

  // Now convert this to JSON
  final bp_json = _encode(bp);
  print("\nBloodPressure:\n" + bp_json);

  // Similarly - create a [Geoposition] object, convert it to JSON and print it.
  Geoposition position = new Geoposition(new PlaneAngleUnitValue(PlaneAngleUnit.DEGREE_OF_ARC, 40.059692382),
      new PlaneAngleUnitValue(PlaneAngleUnit.DEGREE_OF_ARC, -105.21440124511719),
      elevation: new LengthUnitValue((LengthUnit.METER), 1548.5));

  position.positioningSystem = PositioningSystem.GPS;
  position.effectiveTimeFrame = new TimeFrame(dateTime: DateTime.now());
  print("\nGeoposition:\n" + _encode(position));

  //Creating OMH data point ready to be uploaded to an OMH sever

  //First, the data point for the blood pressure measure.
  DataPoint dp_1 = new DataPoint(bp);
  print("\nDataPoint_BloodPressure:\n" + _encode(dp_1));

  // Then the data point for the geo position measure.
  DataPoint dp_2 = new DataPoint(position,
      userId: "bardram",
      provenance: new DataPointAcquisitionProvenance("Android Nexus Phone", modality: DataPointModality.SENSED));

  print("\nDataPoint_Geoposition:\n" + _encode(dp_2));

  //Finally, read a JSON string and convert it into a Flutter object.
  final act_1 = PhysicalActivity.fromJson(json.decode(omh_pa) as Map<String, dynamic>);

  print(
      "\nA person has been " + act_1.activityName + " " + act_1.distance.value.toString() + " " + act_1.distance.unit);
}

String _encode(Object object) => const JsonEncoder.withIndent(' ').convert(object);

// The following data is various OMH JSON examples from the OMH website.
// Testing if we can load these.
final String omh_pa =
    '{    "activity_name": "walking", "distance": { "value": 3.1, "unit": "mi" }, "effective_time_frame": { "time_interval": { "start_date_time": "2015-02-06T06:25:00Z", "end_date_time": "2015-02-06T07:25:00Z" } },"kcal_burned": {"value": 160,"unit": "kcal"},"met_value": 3.5}';
