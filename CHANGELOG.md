## 0.0.2

- Implementation of OMH schemas: 
   - Activity, including `PhysicalActivity`, `KcalUnitValue`, `KcalUnit`, `StepCount`, `CalloriesBurden`, etc.
   - updates and refactor of other base schemas
   - adding more tests
   
   
## 0.0.1

- Initial commit of OMH domain model ...
   - Basic support for schemas, including `SchemaId`, `SchemaVersion`, and the mixin class `AdditionalPropertySupport`.
   - The core OMH units, including `Unit`, `UnitValue` and `TypedUnitValue`. 
   - Implementation of `DescriptiveStatistic`.
   - Support for the OMH geoposition schemas including `Geoposition`, `PlaneAngleUnitValue`, etc.
   - Test skeleton -- which needs to be extended to better coverage.
