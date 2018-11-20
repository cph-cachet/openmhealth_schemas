// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Survey _$SurveyFromJson(Map<String, dynamic> json) {
  return Survey()
    ..effectiveTimeFrame = json['effective_time_frame'] == null
        ? null
        : TimeFrame.fromJson(
            json['effective_time_frame'] as Map<String, dynamic>)
    ..descriptiveStatistic = json['descriptive_statistic'] as String
    ..userNotes = json['user_notes'] as String
    ..items = (json['items'] as List)
        ?.map((e) =>
            e == null ? null : SurveyItem.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..deliveryDetails = json['delivery_details'] == null
        ? null
        : SurveyDeliveryDetails.fromJson(
            json['delivery_details'] as Map<String, dynamic>)
    ..score = json['score'] == null
        ? null
        : UnitValue.fromJson(json['score'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SurveyToJson(Survey instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  writeNotNull('items', instance.items);
  writeNotNull('delivery_details', instance.deliveryDetails);
  writeNotNull('score', instance.score);
  return val;
}

SurveyItem _$SurveyItemFromJson(Map<String, dynamic> json) {
  return SurveyItem(json['question'] == null
      ? null
      : SurveyQuestion.fromJson(json['question'] as Map<String, dynamic>))
    ..effectiveTimeFrame = json['effective_time_frame'] == null
        ? null
        : TimeFrame.fromJson(
            json['effective_time_frame'] as Map<String, dynamic>)
    ..descriptiveStatistic = json['descriptive_statistic'] as String
    ..userNotes = json['user_notes'] as String
    ..answers = (json['answers'] as List)
        ?.map((e) => e == null
            ? null
            : AbstractSurveyAnswer.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..askedDateTime = json['asked_date_time'] == null
        ? null
        : DateTime.parse(json['asked_date_time'] as String)
    ..answeredDateTime = json['answered_date_time'] == null
        ? null
        : DateTime.parse(json['answered_date_time'] as String);
}

Map<String, dynamic> _$SurveyItemToJson(SurveyItem instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  writeNotNull('question', instance.question);
  writeNotNull('answers', instance.answers);
  writeNotNull('asked_date_time', instance.askedDateTime?.toIso8601String());
  writeNotNull(
      'answered_date_time', instance.answeredDateTime?.toIso8601String());
  return val;
}

SurveyQuestion _$SurveyQuestionFromJson(Map<String, dynamic> json) {
  return SurveyQuestion(json['text'] as String, label: json['label'] as String)
    ..effectiveTimeFrame = json['effective_time_frame'] == null
        ? null
        : TimeFrame.fromJson(
            json['effective_time_frame'] as Map<String, dynamic>)
    ..descriptiveStatistic = json['descriptive_statistic'] as String
    ..userNotes = json['user_notes'] as String;
}

Map<String, dynamic> _$SurveyQuestionToJson(SurveyQuestion instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  writeNotNull('label', instance.label);
  writeNotNull('text', instance.text);
  return val;
}

AbstractSurveyAnswer _$AbstractSurveyAnswerFromJson(Map<String, dynamic> json) {
  return AbstractSurveyAnswer()
    ..effectiveTimeFrame = json['effective_time_frame'] == null
        ? null
        : TimeFrame.fromJson(
            json['effective_time_frame'] as Map<String, dynamic>)
    ..descriptiveStatistic = json['descriptive_statistic'] as String
    ..userNotes = json['user_notes'] as String;
}

Map<String, dynamic> _$AbstractSurveyAnswerToJson(
    AbstractSurveyAnswer instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  return val;
}

SurveyAnswer _$SurveyAnswerFromJson(Map<String, dynamic> json) {
  return SurveyAnswer(json['value'] as String)
    ..effectiveTimeFrame = json['effective_time_frame'] == null
        ? null
        : TimeFrame.fromJson(
            json['effective_time_frame'] as Map<String, dynamic>)
    ..descriptiveStatistic = json['descriptive_statistic'] as String
    ..userNotes = json['user_notes'] as String;
}

Map<String, dynamic> _$SurveyAnswerToJson(SurveyAnswer instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  writeNotNull('value', instance.value);
  return val;
}

SurveyCategoricalAnswer _$SurveyCategoricalAnswerFromJson(
    Map<String, dynamic> json) {
  return SurveyCategoricalAnswer(
      value: (json['value'] as Map<String, dynamic>)
          ?.map((k, e) => MapEntry(k, e as String)))
    ..effectiveTimeFrame = json['effective_time_frame'] == null
        ? null
        : TimeFrame.fromJson(
            json['effective_time_frame'] as Map<String, dynamic>)
    ..descriptiveStatistic = json['descriptive_statistic'] as String
    ..userNotes = json['user_notes'] as String;
}

Map<String, dynamic> _$SurveyCategoricalAnswerToJson(
    SurveyCategoricalAnswer instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  writeNotNull('value', instance.value);
  return val;
}

SurveyDateAnswer _$SurveyDateAnswerFromJson(Map<String, dynamic> json) {
  return SurveyDateAnswer()
    ..effectiveTimeFrame = json['effective_time_frame'] == null
        ? null
        : TimeFrame.fromJson(
            json['effective_time_frame'] as Map<String, dynamic>)
    ..descriptiveStatistic = json['descriptive_statistic'] as String
    ..userNotes = json['user_notes'] as String
    ..value =
        json['value'] == null ? null : DateTime.parse(json['value'] as String);
}

Map<String, dynamic> _$SurveyDateAnswerToJson(SurveyDateAnswer instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  writeNotNull('value', instance.value?.toIso8601String());
  return val;
}

SurveyTimeAnswer _$SurveyTimeAnswerFromJson(Map<String, dynamic> json) {
  return SurveyTimeAnswer(json['value'] as String)
    ..effectiveTimeFrame = json['effective_time_frame'] == null
        ? null
        : TimeFrame.fromJson(
            json['effective_time_frame'] as Map<String, dynamic>)
    ..descriptiveStatistic = json['descriptive_statistic'] as String
    ..userNotes = json['user_notes'] as String;
}

Map<String, dynamic> _$SurveyTimeAnswerToJson(SurveyTimeAnswer instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  writeNotNull('value', instance.value);
  return val;
}

SurveyUnitValueAnswer _$SurveyUnitValueAnswerFromJson(
    Map<String, dynamic> json) {
  return SurveyUnitValueAnswer(json['value'] == null
      ? null
      : UnitValue.fromJson(json['value'] as Map<String, dynamic>))
    ..effectiveTimeFrame = json['effective_time_frame'] == null
        ? null
        : TimeFrame.fromJson(
            json['effective_time_frame'] as Map<String, dynamic>)
    ..descriptiveStatistic = json['descriptive_statistic'] as String
    ..userNotes = json['user_notes'] as String;
}

Map<String, dynamic> _$SurveyUnitValueAnswerToJson(
    SurveyUnitValueAnswer instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  writeNotNull('value', instance.value);
  return val;
}

SurveyDeliveryDetails _$SurveyDeliveryDetailsFromJson(
    Map<String, dynamic> json) {
  return SurveyDeliveryDetails(
      startDateTime: json['start_date_time'] == null
          ? null
          : DateTime.parse(json['start_date_time'] as String),
      endDateTime: json['end_date_time'] == null
          ? null
          : DateTime.parse(json['end_date_time'] as String),
      endStatus: json['end_status'] as String)
    ..effectiveTimeFrame = json['effective_time_frame'] == null
        ? null
        : TimeFrame.fromJson(
            json['effective_time_frame'] as Map<String, dynamic>)
    ..descriptiveStatistic = json['descriptive_statistic'] as String
    ..userNotes = json['user_notes'] as String;
}

Map<String, dynamic> _$SurveyDeliveryDetailsToJson(
    SurveyDeliveryDetails instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  writeNotNull('start_date_time', instance.startDateTime?.toIso8601String());
  writeNotNull('end_date_time', instance.endDateTime?.toIso8601String());
  writeNotNull('end_status', instance.endStatus);
  return val;
}

SurveyScore _$SurveyScoreFromJson(Map<String, dynamic> json) {
  return SurveyScore(
      score: json['score'] as int, value: json['value'] as String)
    ..effectiveTimeFrame = json['effective_time_frame'] == null
        ? null
        : TimeFrame.fromJson(
            json['effective_time_frame'] as Map<String, dynamic>)
    ..descriptiveStatistic = json['descriptive_statistic'] as String
    ..userNotes = json['user_notes'] as String;
}

Map<String, dynamic> _$SurveyScoreToJson(SurveyScore instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  writeNotNull('score', instance.score);
  writeNotNull('value', instance.value);
  return val;
}
