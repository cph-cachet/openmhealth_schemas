import 'package:openmhealth_schemas/openmhealth_schemas.dart';

/// A single episode of physical activity.
///
/// OMH version 1.2
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_physical-activity">physical-activity</a>
class PhysicalActivity extends Measure {
  static SchemaId SCHEMA_ID = new SchemaId(SchemaSupport.OMH_NAMESPACE, "physical-activity", new SchemaVersion(1, 2));

  String activityName;
  LengthUnitValue distance;
  SelfReportedIntensity reportedActivityIntensity;
  KcalUnitValue caloriesBurned;

  /// Creates a [PhysicalActivity]. The [activityName] is required according to the OMH definition.
  PhysicalActivity(
    this.activityName, {
    this.distance,
    this.reportedActivityIntensity,
    this.caloriesBurned,
  });

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// Self-reported intensity of a [PhysicalActivity].
///
/// OMH version 1.2
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_physical-activity">physical-activity</a>
class SelfReportedIntensity extends SchemaEnumValue {
  static const String LIGHT = 'LIGHT';
  static const String MODERATE = 'MODERATE';
  static const String VIGOROUS = 'VIGOROUS';

  SelfReportedIntensity(schemaValue) : super(schemaValue);
}

/// A unit of kilocalories.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_kcal-unit-value">kcal-unit-value</a>
class KcalUnit extends Unit {
  static SchemaId SCHEMA_ID = new SchemaId(SchemaSupport.OMH_NAMESPACE, "kcal-unit-value", new SchemaVersion(1, 0));

  static const String KILOCALORIE = 'kcal';

  KcalUnit(schemaValue) : super(schemaValue);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_kcal-unit-value">kcal-unit-value</a>
class KcalUnitValue extends TypedUnitValue<KcalUnit> {
  static SchemaId SCHEMA_ID = new SchemaId(SchemaSupport.OMH_NAMESPACE, "kcal-unit-value", new SchemaVersion(1, 0));

  KcalUnitValue(KcalUnit unit, double value) : super(unit, value);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// A single step count measure.
///
/// OMH version 2.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_step-count">step-count</a>
class StepCount extends Measure {
  static SchemaId SCHEMA_ID = new SchemaId(SchemaSupport.OMH_NAMESPACE, "step-count", new SchemaVersion(2, 0));

  int stepCount;

  /// Creates a [StepCount]. The [stepCount] is required according to the OMH definition.
  StepCount(this.stepCount);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// The calories burned in a single episode of activity.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_calories-burned">calories-burned</a>
class CaloriesBurned extends Measure {
  static SchemaId SCHEMA_ID = new SchemaId(SchemaSupport.OMH_NAMESPACE, "calories-burned", new SchemaVersion(1, 0));

  KcalUnitValue kcalBurned;
  String activityName;
  DescriptiveStatisticDenominator descriptiveStatisticDenominator;

  /// Creates a [CaloriesBurned]. The [kcalBurned] is required according to the OMH definition.
  CaloriesBurned(this.kcalBurned);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// A measurement of minutes of moderate-intensity activity performed.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_minutes-moderate-activity">minutes-moderate-activity</a>
class MinutesModerateActivity extends Measure {
  static SchemaId SCHEMA_ID =
      new SchemaId(SchemaSupport.OMH_NAMESPACE, "minutes-moderate-activity", new SchemaVersion(1, 0));

  DurationUnitValue minutesModerateActivity;

  /// Creates a [MinutesModerateActivity]. The [minutesModerateActivity] is required according to the OMH definition.
  MinutesModerateActivity(this.minutesModerateActivity);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}
