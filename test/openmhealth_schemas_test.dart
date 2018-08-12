import 'package:test/test.dart';
import 'package:openmhealth_schemas/openmhealth_schemas.dart';

void main() {
  test('OMH Geoposition Schema Test', () {
    //Tryng to create the example from OMH
    Geoposition p = new Geoposition(
        latitude: new PlaneAngleUnitValue(PlaneAngleUnit.DEGREE_OF_ARC, 40.059692382),
        longitude: new PlaneAngleUnitValue(PlaneAngleUnit.DEGREE_OF_ARC, -105.21440124511719),
        elevation: new LengthUnitValue(LengthUnit.METER, 1548.5));

    expect(p.elevation.value, 1548.5);
  });
  test('', () {
    //Testing
  });
  test('', () {
    //Testing
  });
  test('', () {
    //Testing
  });
  test('', () {
    //Testing
  });
}
