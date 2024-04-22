part of '../../openmhealth_schemas.dart';

/// This schema represents a survey as an array of at least one survey item (the combination of a question and
/// the list of its possible answers).
///
/// OMH version 0.1
/// See <a href="https://github.com/openmhealth/schemas/blob/feature/generic-survey/schema/omh/survey-0.1.json">survey</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class Survey extends Measure {
  static final SchemaId SCHEMA_ID = SchemaId.withVersion(
      SchemaSupport.OMH_NAMESPACE, SchemaSupport.SURVEY, SchemaVersion.V1_0);

  /// The list of questions and answers that make up this survey.
  List<SurveyItem> items = [];

  /// The operational details of delivering this survey.
  SurveyDeliveryDetails deliveryDetails;

  /// The score calculated for the survey.
  UnitValue? score;

  Survey({
    required this.deliveryDetails,
    this.score,
  });

  factory Survey.fromJson(Map<String, dynamic> json) => _$SurveyFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$SurveyToJson(this);

  @override
  SchemaId getSchemaId() => SCHEMA_ID;
}

/// This schema represents a survey item, i.e., the combination of a question
/// and the list of its answers.
///
/// OMH version 0.1
/// See <a href="https://github.com/openmhealth/schemas/blob/feature/generic-survey/schema/omh/survey-item-0.1.json">survey</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class SurveyItem extends Measure {
  static SchemaId SCHEMA_ID = SchemaId.withVersion(
    SchemaSupport.OMH_NAMESPACE,
    SchemaSupport.SURVEY_ITEM,
    SchemaVersion.V1_0,
  );

  /// The question being asked.
  SurveyQuestion question;

  /// A list of answers to the question. This list is empty if the question isn't
  /// answered, and may have multiple elements if more than one answer is provided.
  List<AbstractSurveyAnswer> answers = [];

  /// The date time at which this item was presented to the participant.
  DateTime askedDateTime;

  /// The date time at which the answer was provided.
  /// If multiple answers are provided, the suggestion is to use the last
  /// answer's date time.
  DateTime answeredDateTime;

  /// Creates a [SurveyItem]. The [question] is required according to the OMH definition.
  SurveyItem({
    required this.question,
    required this.askedDateTime,
    required this.answeredDateTime,
  });

  factory SurveyItem.fromJson(Map<String, dynamic> json) =>
      _$SurveyItemFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$SurveyItemToJson(this);

  @override
  SchemaId getSchemaId() => SCHEMA_ID;
}

/// This schema represents a survey question.
///
/// OMH version 0.1
/// See <a href="https://github.com/openmhealth/schemas/blob/feature/generic-survey/schema/omh/survey-question-0.1.json">survey-question</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class SurveyQuestion extends Measure {
  static SchemaId SCHEMA_ID = SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE,
      SchemaSupport.SURVEY_QUESTION, SchemaVersion.V1_0);

  ///The text of the question.
  String text;

  /// An optional label used to identify the question.
  String? label;

  /// Creates a [SurveyQuestion]. The [text] is required according to the OMH definition.
  SurveyQuestion({
    required this.text,
    this.label,
  });

  factory SurveyQuestion.fromJson(Map<String, dynamic> json) =>
      _$SurveyQuestionFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$SurveyQuestionToJson(this);

  @override
  SchemaId getSchemaId() => SCHEMA_ID;
}

/// An abstract base class for all answer types.
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class AbstractSurveyAnswer extends Measure {
  static SchemaId SCHEMA_ID = SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE,
      SchemaSupport.SURVEY_ANSWER, SchemaVersion.V1_0);

  AbstractSurveyAnswer();

  factory AbstractSurveyAnswer.fromJson(Map<String, dynamic> json) =>
      _$AbstractSurveyAnswerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$AbstractSurveyAnswerToJson(this);

  @override
  SchemaId getSchemaId() => SCHEMA_ID;
}

/// This schema represents a survey answer as a simple string (which may contain JSON).
/// If the answer is chosen out of a set of categories, use the schema survey-categorical-answer.
/// If the answer is a value with its unit of measure, use the schema survey-unit-value-answer.
///
/// OMH version 0.1
/// See <a href="https://github.com/openmhealth/schemas/blob/feature/generic-survey/schema/omh/survey-answer-0.1.json">survey-answer</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class SurveyAnswer extends AbstractSurveyAnswer {
  static SchemaId SCHEMA_ID = SchemaId.withVersion(
      SchemaSupport.OMH_NAMESPACE, 'survey-answer', SchemaVersion.V1_0);

  /// The value of the answer.
  String value;

  SurveyAnswer({required this.value});

  factory SurveyAnswer.fromJson(Map<String, dynamic> json) =>
      _$SurveyAnswerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$SurveyAnswerToJson(this);

  @override
  SchemaId getSchemaId() => SCHEMA_ID;
}

/// This schema represents categorical answers to a survey question.
///
/// OMH version 0.1
/// See <a href="https://github.com/openmhealth/schemas/blob/feature/generic-survey/schema/omh/survey-categorical-answer-0.1.json">survey-categorical-answer</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class SurveyCategoricalAnswer extends AbstractSurveyAnswer {
  static SchemaId SCHEMA_ID = SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE,
      'survey-categorical-answer', SchemaVersion.V1_0);

  /// The list of selected categories. For example, `'1' -> 'Never'`
  /// on a 7-point Likert scale.
  /// Note that this map supports the selection of multiple answers.
  Map<String, String> value;

  SurveyCategoricalAnswer({required this.value});

  factory SurveyCategoricalAnswer.fromJson(Map<String, dynamic> json) =>
      _$SurveyCategoricalAnswerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$SurveyCategoricalAnswerToJson(this);

  @override
  SchemaId getSchemaId() => SCHEMA_ID;
}

/// This schema represents a (full or partial) date value answer to a survey question.
///
/// OMH version 0.1
/// See <a href="https://github.com/openmhealth/schemas/blob/feature/generic-survey/schema/omh/survey-date-answer-0.1.json">survey-date-answer</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class SurveyDateAnswer extends AbstractSurveyAnswer {
  static SchemaId SCHEMA_ID = SchemaId.withVersion(
      SchemaSupport.OMH_NAMESPACE, 'survey-date-answer', SchemaVersion.V1_0);

  /// The date value. The time part may be used or ignored.
  DateTime value;

  SurveyDateAnswer({required this.value});

  factory SurveyDateAnswer.fromJson(Map<String, dynamic> json) =>
      _$SurveyDateAnswerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$SurveyDateAnswerToJson(this);

  @override
  SchemaId getSchemaId() => SCHEMA_ID;
}

/// This schema represents a time value answer to a survey question.
///
/// OMH version 0.1
/// See <a href="https://github.com/openmhealth/schemas/blob/feature/generic-survey/schema/omh/survey-time-answer-0.1.json">survey-time-answer</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class SurveyTimeAnswer extends AbstractSurveyAnswer {
  static SchemaId SCHEMA_ID = SchemaId.withVersion(
      SchemaSupport.OMH_NAMESPACE, 'survey-time-answer', SchemaVersion.V1_0);

  /// A time of day value (hours and minutes) in 24 hours format.
  /// RegExp pattern : `^([01]\\d|2[0-3]):[0-5]\\d$`
  String value;

  SurveyTimeAnswer({required this.value}) : super();

  factory SurveyTimeAnswer.fromJson(Map<String, dynamic> json) =>
      _$SurveyTimeAnswerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$SurveyTimeAnswerToJson(this);

  @override
  SchemaId getSchemaId() => SCHEMA_ID;
}

/// This schema represents a unit value answer to a survey question.
///
/// OMH version 0.1
/// See <a href="https://github.com/openmhealth/schemas/blob/feature/generic-survey/schema/omh/survey-unit-value-answer-0.1.json">survey-unit-value-answer</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class SurveyUnitValueAnswer extends AbstractSurveyAnswer {
  static SchemaId SCHEMA_ID = SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE,
      'survey-unit-value-answer', SchemaVersion.V1_0);

  /// The unit value.
  UnitValue value;

  SurveyUnitValueAnswer({required this.value}) : super();

  factory SurveyUnitValueAnswer.fromJson(Map<String, dynamic> json) =>
      _$SurveyUnitValueAnswerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$SurveyUnitValueAnswerToJson(this);

  @override
  SchemaId getSchemaId() => SCHEMA_ID;
}

/// The operational details of how a survey was delivered and completed.
///
/// OMH version 0.1
/// See <a href="https://github.com/openmhealth/schemas/blob/feature/generic-survey/schema/omh/survey-0.1.json">survey</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class SurveyDeliveryDetails extends Measure {
  static SchemaId SCHEMA_ID = SchemaId.withVersion(
      SchemaSupport.OMH_NAMESPACE, 'survey', SchemaVersion.V1_0);

  /// The date time at which this survey was started.
  DateTime startDateTime;

  /// The date time at which this survey was finished (not necessarily completed).
  DateTime endDateTime;

  /// The way this survey was ended by the participant. See [SurveyEndStatus].
  /// Abandoned means some answers were provided.
  /// Missed means no answers were provided.
  String endStatus;

  /// Creates a [SurveyDeliveryDetails].
  SurveyDeliveryDetails({
    required this.startDateTime,
    required this.endDateTime,
    required this.endStatus,
  });

  factory SurveyDeliveryDetails.fromJson(Map<String, dynamic> json) =>
      _$SurveyDeliveryDetailsFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$SurveyDeliveryDetailsToJson(this);

  @override
  SchemaId getSchemaId() => SCHEMA_ID;
}

/// End status of a [SurveyDeliveryDetails].
class SurveyEndStatus {
  static const String ABANDONED = 'abandoned';
  static const String COMPLETED = 'completed';
  static const String MISSED = 'missed';
}

/// The score calculated for the survey. This can be a number or a combination
/// of numbers and/or string.
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class SurveyScore extends Measure {
  static SchemaId SCHEMA_ID = SchemaId.withVersion(
      SchemaSupport.OMH_NAMESPACE, 'survey', SchemaVersion.V1_0);

  /// A numerical score for this [Survey].
  int? score;

  /// A string (e.g. JSON) representation of this score.
  String? value;

  SurveyScore({this.score, this.value});

  factory SurveyScore.fromJson(Map<String, dynamic> json) =>
      _$SurveyScoreFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$SurveyScoreToJson(this);

  @override
  SchemaId getSchemaId() => SCHEMA_ID;
}
