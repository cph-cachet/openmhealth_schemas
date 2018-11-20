import 'package:test/test.dart';
import 'package:openmhealth_schemas/openmhealth_schemas.dart';
import 'dart:convert';

void main() {
  group("OMH Schema Tests", () {
    test('- geoposition', () {
      //Tryng to create the example from OMH
      Geoposition position = new Geoposition(new PlaneAngleUnitValue(PlaneAngleUnit.DEGREE_OF_ARC, 40.059692382),
          new PlaneAngleUnitValue(PlaneAngleUnit.DEGREE_OF_ARC, -105.21440124511719),
          elevation: new LengthUnitValue((LengthUnit.METER), 1548.5));

      expect(position.elevation.value, 1548.5);

      print(position.latitude.toString());
      print(position.longitude.toString());
      print(position.elevation.toString());
    });

    test('- physical activity', () {
      //Just creating a PhysicalActivity
      PhysicalActivity activity = new PhysicalActivity('Coding OMH schemas',
          caloriesBurned: new KcalUnitValue(KcalUnit.KILOCALORIE, 320.0),
          reportedActivityIntensity: SelfReportedIntensity.LIGHT,
          distance: new LengthUnitValue((LengthUnit.METER), 12.0));
      expect(activity.reportedActivityIntensity, "light");

      CaloriesBurned cal = new CaloriesBurned(new KcalUnitValue((KcalUnit.KILOCALORIE), 23.2));
      expect(cal.kcalBurned.value, 23.2);

      MinutesModerateActivity mma = new MinutesModerateActivity(new DurationUnitValue(DurationUnit.MINUTE, 12.3));
      expect(mma.minutesModerateActivity.value, 12.3);
    });

    test('- step count', () {
      // Creating the omh 'with average' example;
      StepCount steps = new StepCount(12000);
      steps.descriptiveStatistic = DescriptiveStatistic.AVERAGE;
      steps.descriptiveStatisticDenominator = DescriptiveStatisticDenominator.DAY;
      DateTime now = new DateTime.now();
      DateTime start = new DateTime(2016, 5, 5);
      DateTime end = new DateTime(2016, 6, 5);
      TimeInterval time = new TimeInterval(startDateTime: start, endDateTime: end);
      steps.effectiveTimeFrame = new TimeFrame(timeInterval: time);

      expect(steps.stepCount, 12000);
      expect(steps.effectiveTimeFrame.dateTime, null);
      expect(steps.effectiveTimeFrame.timeInterval.startDateTime, start);
      expect(steps.effectiveTimeFrame.timeInterval.endDateTime, end);
    });

    test('- acceleration', () {
      // Creating the omh 'with average' example;
      Acceleration acc = new Acceleration(new AccelerationUnitValue(AccelerationUnit.M_S2, 9.82),
          new AccelerationUnitValue(AccelerationUnit.M_S2, -9.82),
          acceleration_z: new AccelerationUnitValue(AccelerationUnit.M_S2, 0.0001),
          sensor_body_location: BodyLocation.RIGHT_HIP);

      DateTime start = new DateTime(2016, 5, 5);
      DateTime end = new DateTime(2016, 6, 5);
      TimeInterval time = new TimeInterval(startDateTime: start, endDateTime: end);
      acc.effectiveTimeFrame = new TimeFrame(timeInterval: time);

      expect(acc.sensor_body_location, "right hip");
      expect(acc.effectiveTimeFrame.dateTime, null);
      expect(acc.effectiveTimeFrame.timeInterval.startDateTime, start);
      expect(acc.effectiveTimeFrame.timeInterval.endDateTime, end);
    });

    test('- blood pressure', () {
      //Testing
      BloodPressure bp = new BloodPressure(new SystolicBloodPressure(BloodPressureUnit.MM_OF_MERCURY, 160.0),
          new DiastolicBloodPressure(BloodPressureUnit.MM_OF_MERCURY, 80.0),
          positionDuringMeasurement: PositionDuringMeasurement.SITTING);

      expect(bp.diastolicBloodPressure.value, 80);
      expect(bp.systolicBloodPressure.value, 160);
      expect(bp.positionDuringMeasurement, "sitting");
    });

    test('- heart rate', () {
      HeartRate hr = new HeartRate(new HeartRateUnitValue(HeartRateUnit.BEATS_PER_MINUTE, 50.0));
      hr.userNotes = "I felt quite dizzy";
      hr.effectiveTimeFrame = new TimeFrame(dateTime: DateTime.now());

      expect(hr.heartRate.value, 50);
      expect(hr.userNotes, isNotNull);

      print("\nHeartRate:\n" + _encode(hr));
    });

    test('- survey', () {
      Survey survey = new Survey();

      SurveyItem item_1 = SurveyItem(SurveyQuestion("How are you doing?"));
      item_1.answeredDateTime = DateTime.now();
      item_1.answers.add(SurveyCategoricalAnswer(value: ({"1": "Fine, thank you", "2": "OK"})));

      SurveyItem item_2 = SurveyItem(SurveyQuestion("When was the '99 Lufttbaloons' album released?"));
      item_2.answeredDateTime = DateTime.now();
      item_2.answers.add(SurveyDateAnswer(DateTime(1984)));

      survey.items.add(item_1);
      survey.items.add(item_2);

      survey.deliveryDetails = SurveyDeliveryDetails(
          startDateTime: DateTime(1998), endDateTime: DateTime.now(), endStatus: SurveyEndStatus.COMPLETED);

      expect(survey.items.length, 2);
      expect(survey.deliveryDetails, isNotNull);

      print("\nSurvey:\n" + _encode(survey));
    });
  });

  group('JSON De-/serialization Tests', () {
    test('... schema serialization', () {
      BloodPressure bp_1 = new BloodPressure(new SystolicBloodPressure(BloodPressureUnit.MM_OF_MERCURY, 160.0),
          new DiastolicBloodPressure(BloodPressureUnit.MM_OF_MERCURY, 80.0),
          positionDuringMeasurement: PositionDuringMeasurement.SITTING);

      print("\nBloodPressure:\n" + _encode(bp_1));

      Geoposition position = new Geoposition(new PlaneAngleUnitValue(PlaneAngleUnit.DEGREE_OF_ARC, 40.059692382),
          new PlaneAngleUnitValue(PlaneAngleUnit.DEGREE_OF_ARC, -105.21440124511719),
          elevation: new LengthUnitValue((LengthUnit.METER), 1548.5));

      position.positioningSystem = PositioningSystem.GPS;

      print("Geoposition:\n" + _encode(position));

      PhysicalActivity activity = new PhysicalActivity('walking',
          caloriesBurned: new KcalUnitValue((KcalUnit.KILOCALORIE), 320.0),
          reportedActivityIntensity: SelfReportedIntensity.LIGHT,
          distance: new LengthUnitValue((LengthUnit.METER), 12.0));

      print("\nPhysicalActivity:\n" + _encode(activity));

      StepCount steps = new StepCount(12000);
      steps.descriptiveStatistic = DescriptiveStatistic.AVERAGE;
      steps.descriptiveStatisticDenominator = DescriptiveStatisticDenominator.DAY;
      DateTime now = new DateTime.now();
      DateTime start = new DateTime(2016, 5, 5);
      DateTime end = new DateTime(2016, 6, 5);
      TimeInterval time = new TimeInterval(startDateTime: start, endDateTime: end);
      steps.effectiveTimeFrame = new TimeFrame(timeInterval: time);

      print("\nStepCount:\n" + _encode(steps));

      CaloriesBurned cal = new CaloriesBurned(new KcalUnitValue(KcalUnit.KILOCALORIE, 23.2));

      print("CaloriesBurned:\n" + _encode(cal));

      MinutesModerateActivity mma = new MinutesModerateActivity(new DurationUnitValue((DurationUnit.MINUTE), 12.3));

      print("MinutesModerateActivity\n" + _encode(mma));
    });

    test('... data point serialization', () {
      BloodPressure bp = new BloodPressure(new SystolicBloodPressure((BloodPressureUnit.MM_OF_MERCURY), 160.0),
          new DiastolicBloodPressure((BloodPressureUnit.MM_OF_MERCURY), 80.0),
          positionDuringMeasurement: PositionDuringMeasurement.SITTING);

      DataPoint dp_1 = new DataPoint(bp);

      print("\nDataPoint_BloodPressure:\n" + _encode(dp_1));

      Geoposition position = new Geoposition(new PlaneAngleUnitValue((PlaneAngleUnit.DEGREE_OF_ARC), 40.059692382),
          new PlaneAngleUnitValue((PlaneAngleUnit.DEGREE_OF_ARC), -105.21440124511719),
          elevation: new LengthUnitValue(LengthUnit.METER, 1548.5));

      DataPoint dp_2 = new DataPoint(position,
          userId: "bardram",
          provenance: new DataPointAcquisitionProvenance("Android Nexus Phone", modality: DataPointModality.SENSED));

      print("\nDataPoint_Geoposition:\n" + _encode(dp_2));
    });

    test('... schema de-/serialization', () {
      UnitValue uv_1 = new UnitValue("mmHg", 120.2);
      final uv_1_json = _encode(uv_1);
      print("\nUnit Value:\n" + uv_1_json);
      final uv_2 = UnitValue.fromJson(json.decode(uv_1_json) as Map<String, dynamic>);
      expect(uv_2.value, uv_1.value);
      expect(_encode(uv_2), equals(uv_1_json));

      LengthUnitValue luv_1 = new LengthUnitValue(LengthUnit.METER, 10.2);
      final luv_1_json = _encode(luv_1);
      print("\nLength Unit Value:\n" + luv_1_json);
      final luv_2 = LengthUnitValue.fromJson(json.decode(luv_1_json) as Map<String, dynamic>);
      expect(_encode(luv_2), equals(luv_1_json));

      Geoposition p_1 = new Geoposition(new PlaneAngleUnitValue((PlaneAngleUnit.DEGREE_OF_ARC), 40.059692382),
          new PlaneAngleUnitValue((PlaneAngleUnit.DEGREE_OF_ARC), -105.21440124511719),
          elevation: new LengthUnitValue(LengthUnit.METER, 1548.5));

      p_1.positioningSystem = PositioningSystem.GPS;
      final p_1_json = _encode(p_1);
      print("Geoposition:\n" + p_1_json);
      final p_2 = Geoposition.fromJson(json.decode(p_1_json) as Map<String, dynamic>);
      expect(p_2.longitude.value, p_1.longitude.value);
      expect(_encode(p_2), equals(p_1_json));

      BloodPressure bp_1 = new BloodPressure(new SystolicBloodPressure((BloodPressureUnit.MM_OF_MERCURY), 160.0),
          new DiastolicBloodPressure((BloodPressureUnit.MM_OF_MERCURY), 80.0),
          positionDuringMeasurement: PositionDuringMeasurement.SITTING);

      final bp_1_json = _encode(bp_1);
      print("\nBloodPressure:\n" + bp_1_json);
      final bp_2 = BloodPressure.fromJson(json.decode(bp_1_json) as Map<String, dynamic>);
      expect(_encode(bp_2), equals(bp_1_json));

      PhysicalActivity act_1 = new PhysicalActivity('walking',
          caloriesBurned: new KcalUnitValue(KcalUnit.KILOCALORIE, 320.0),
          reportedActivityIntensity: SelfReportedIntensity.LIGHT,
          distance: new LengthUnitValue(LengthUnit.KILOMETER, 12.0));
      act_1.effectiveTimeFrame = new TimeFrame(dateTime: DateTime.now());

      final act_1_json = _encode(act_1);
      print("\nPhysicalActivity:\n" + _encode(act_1));
      final act_2 = PhysicalActivity.fromJson(json.decode(act_1_json) as Map<String, dynamic>);
      expect(_encode(act_2), equals(act_1_json));

      CaloriesBurned cal_1 = new CaloriesBurned(new KcalUnitValue(KcalUnit.KILOCALORIE, 23.2));

      final cal_1_json = _encode(cal_1);
      print("\nCaloriesBurned:\n" + _encode(cal_1));
      final cal_2 = CaloriesBurned.fromJson(json.decode(cal_1_json) as Map<String, dynamic>);
      expect(_encode(cal_2), equals(cal_1_json));

      MinutesModerateActivity mma_1 = new MinutesModerateActivity(new DurationUnitValue(DurationUnit.MINUTE, 12.3));

      final mma_1_json = _encode(mma_1);
      print("\nMinutesModerateActivity\n" + _encode(mma_1));
      final mma_2 = MinutesModerateActivity.fromJson(json.decode(mma_1_json) as Map<String, dynamic>);
      expect(_encode(mma_2), equals(mma_1_json));
    });

    test('... deserialization from raw json', () {
      final act_1 = PhysicalActivity.fromJson(json.decode(omh_pa_1) as Map<String, dynamic>);
      print("\nOMH PhysicalActivity:\n" + _encode(act_1));
      expect(act_1.activityName, "walking");

      final act_2 = PhysicalActivity.fromJson(json.decode(omh_pa_2) as Map<String, dynamic>);
      print("\nOMH PhysicalActivity:\n" + _encode(act_2));
      expect(act_2.reportedActivityIntensity, "moderate");
    });
  });
}

String _encode(Object object) => const JsonEncoder.withIndent(' ').convert(object);

// The following data is various OMH JSON examples from the OMH website.
// Testing if we can load these.
final String omh_pa_1 =
    '{"activity_name": "walking", "distance": { "value": 3.1, "unit": "mi" }, "effective_time_frame": { "time_interval": { "start_date_time": "2015-02-06T06:25:00Z", "end_date_time": "2015-02-06T07:25:00Z" } },"kcal_burned": {"value": 160,"unit": "kcal"},"met_value": 3.5}';

final String omh_pa_2 =
    '{"activity_name": "walking","distance": {"value": 1.5,"unit": "mi"},"reported_activity_intensity": "moderate"}';
