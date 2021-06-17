/// A Flutter implementation of the [Open mHealth](http://www.openmhealth.org)
/// schemas.
/// The original Java schemas are available on the
/// [Open mHealth GitHub](https://github.com/openmhealth/schemas).
///
/// Disclaimer: Note that not all OMH schemas are implemented yet. This is work in progress.
library openmhealth_schemas;

import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';

part 'domain/omh/acceleration.dart';
part 'domain/omh/activity.dart';
part 'domain/omh/bloodpressure.dart';
part 'domain/omh/cardio.dart';
part 'domain/omh/datapoint.dart';
part 'domain/omh/geoposition.dart';
part 'domain/omh/measure.dart';
part 'domain/omh/schemas.dart';
part 'domain/omh/statistics.dart';
part 'domain/omh/survey.dart';
part 'domain/omh/times.dart';
part 'domain/omh/units.dart';

part 'openmhealth_schemas.g.dart';

// auto generate json code (.g files) with:
//   flutter pub run build_runner build --delete-conflicting-outputs
