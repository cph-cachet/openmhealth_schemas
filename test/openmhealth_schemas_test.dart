import 'package:test/test.dart';
import 'package:openmhealth_schemas/openmhealth_schemas.dart';

void main() {
  test('OMH Geoposition Schema Test', () {
    //Tryng to create the example from OMH
    Geoposition position = new Geoposition(
        new PlaneAngleUnitValue(new PlaneAngleUnit(PlaneAngleUnit.DEGREE_OF_ARC), 40.059692382),
        new PlaneAngleUnitValue(new PlaneAngleUnit(PlaneAngleUnit.DEGREE_OF_ARC), -105.21440124511719),
        elevation: new LengthUnitValue(new LengthUnit(LengthUnit.METER), 1548.5));

    expect(position.elevation.value, 1548.5);

    print(position.latitude.toString());
    print(position.longitude.toString());
    print(position.elevation.toString());
  });

  test('OMH PhysicalActivity Schema Test', () {
    //Just creating a PhysicalActivity
    PhysicalActivity activity = new PhysicalActivity('Coding OMH schemas',
        caloriesBurned: new KcalUnitValue(new KcalUnit(KcalUnit.KILOCALORIE), 320.0),
        reportedActivityIntensity: new SelfReportedIntensity(SelfReportedIntensity.LIGHT),
        distance: new LengthUnitValue(new LengthUnit(LengthUnit.METER), 12.0));
    expect(activity.reportedActivityIntensity.schemaValue, "LIGHT");

    CaloriesBurned cal = new CaloriesBurned(new KcalUnitValue(new KcalUnit(KcalUnit.KILOCALORIE), 23.2));
    expect(cal.kcalBurned.value, 23.2);

    MinutesModerateActivity mma =
        new MinutesModerateActivity(new DurationUnitValue(new DurationUnit(DurationUnit.MINUTE), 12.3));
    expect(mma.minutesModerateActivity.value, 12.3);
  });

  test('OMH Step Count Schema Test', () {
    // Creating the omh 'with average' example;
    StepCount steps = new StepCount(12000);
    steps.descriptiveStatistic = new DescriptiveStatistic(DescriptiveStatistic.AVERAGE);
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

  test('', () {
    //Testing
  });

  test('', () {
    //Testing
  });
}
