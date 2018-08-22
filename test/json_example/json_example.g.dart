// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_example.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) {
  return Person(
      json['first_name'] as String,
      json['last_name'] as String,
      json['date_of_birth'] == null
          ? null
          : DateTime.parse(json['date_of_birth'] as String),
      middleName: json['middle_name'] as String,
      lastOrder: json['last_order'] == null
          ? null
          : DateTime.parse(json['last_order'] as String),
      orders: (json['orders'] as List)
          .map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList());
}

Map<String, dynamic> _$PersonToJson(Person instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('middle_name', instance.middleName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('date_of_birth', instance.dateOfBirth?.toIso8601String());
  writeNotNull('last_order', instance.lastOrder?.toIso8601String());
  val['orders'] = instance.orders;
  return val;
}

Actor _$ActorFromJson(Map<String, dynamic> json) {
  return Actor(
      json['first_name'] as String,
      json['last_name'] as String,
      json['date_of_birth'] == null
          ? null
          : DateTime.parse(json['date_of_birth'] as String),
      json['role'] as String)
    ..orders = (json['orders'] as List)
        .map((e) => Order.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$ActorToJson(Actor instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('date_of_birth', instance.dateOfBirth?.toIso8601String());
  val['orders'] = instance.orders;
  writeNotNull('role', instance.role);
  return val;
}

Order _$OrderFromJson(Map<String, dynamic> json) {
  return Order(
      json['date'] == null ? null : _dateTimeFromEpochUs(json['date'] as int))
    ..count = json['count'] as int
    ..itemNumber = json['item_number'] as int
    ..isRushed = json['is_rushed'] as bool
    ..item = json['item'] == null
        ? null
        : Item.fromJson(json['item'] as Map<String, dynamic>)
    ..prepTime = json['prep-time'] == null
        ? null
        : _durationFromMillseconds(json['prep-time'] as int);
}

Map<String, dynamic> _$OrderToJson(Order instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  writeNotNull('item_number', instance.itemNumber);
  writeNotNull('is_rushed', instance.isRushed);
  writeNotNull('item', instance.item);
  writeNotNull(
      'prep-time',
      instance.prepTime == null
          ? null
          : _durationToMilliseconds(instance.prepTime));
  writeNotNull(
      'date', instance.date == null ? null : _dateTimeToEpochUs(instance.date));
  return val;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return Item()
    ..count = json['count'] as int
    ..itemNumber = json['item_number'] as int
    ..isRushed = json['is_rushed'] as bool;
}

Map<String, dynamic> _$ItemToJson(Item instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  writeNotNull('item_number', instance.itemNumber);
  writeNotNull('is_rushed', instance.isRushed);
  return val;
}

// **************************************************************************
// JsonLiteralGenerator
// **************************************************************************

final _$glossaryDataJsonLiteral = {
  'glossary': {
    'title': 'example glossary',
    'GlossDiv': {
      'title': 'S',
      'GlossList': {
        'GlossEntry': {
          'ID': 'SGML',
          'SortAs': 'SGML',
          'GlossTerm': 'Standard Generalized Markup Language',
          'Acronym': 'SGML',
          'Abbrev': 'ISO 8879:1986',
          'GlossDef': {
            'para':
                'A meta-markup language, used to create markup languages such as DocBook.',
            'GlossSeeAlso': ['GML', 'XML']
          },
          'GlossSee': 'markup'
        }
      }
    }
  }
};
