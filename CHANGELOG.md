## 0.1.2
- support for surveys added

## 0.1.1
- Updated documentation
 
## 0.1.0
- Update to support Dart 2.0

## 0.0.4
- Implemented cardio-related schemas, such as `RrInterval` and `HeartRate`.
- Improvement to documentation.

## 0.0.3

- Implementation of `BloodPressure` and associated schemas.
- Implementation of time-related schemas, such as `TemporalRelationshipToMeal` etc.
- Adding support for JSON de/serialization of the OMH schemas implemented so far.
- Extensive unit test for the de/serialization, including loading test data from the OMH website.

## 0.0.2

- Implementation of OMH schemas: 
   - Activity, including `PhysicalActivity`, `KcalUnitValue`, `KcalUnit`, `StepCount`, `CalloriesBurden`, etc.
   - updates and refactor of other base schemas
 - Adding more tests
   
   
## 0.0.1

- Initial commit of OMH domain model ...
   - Basic support for schemas, including `SchemaId`, `SchemaVersion`, and the mixin class `AdditionalPropertySupport`.
   - The core OMH units, including `Unit`, `UnitValue` and `TypedUnitValue`. 
   - Implementation of `DescriptiveStatistic`.
   - Support for the OMH geoposition schemas including `Geoposition`, `PlaneAngleUnitValue`, etc.
- Test skeleton -- which needs to be extended to better coverage.
