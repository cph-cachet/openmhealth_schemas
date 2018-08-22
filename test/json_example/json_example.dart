// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';
part 'json_example.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class Person {
  final String firstName;
  @JsonKey(includeIfNull: false)
  final String middleName;
  final String lastName;

  //@JsonKey(name: 'date-of-birth', nullable: false)
  final DateTime dateOfBirth;

  //@JsonKey(name: 'last-order')
  final DateTime lastOrder;

  @JsonKey(nullable: false)
  List<Order> orders;

  Person(this.firstName, this.lastName, this.dateOfBirth, {this.middleName, this.lastOrder, List<Order> orders})
      : this.orders = orders ?? <Order>[];

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  Map<String, dynamic> toJson() => _$PersonToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class Actor extends Person {
  final String role;

  Actor(String firstName, String lastName, DateTime dateOfBirth, this.role) : super(firstName, lastName, dateOfBirth);

  factory Actor.fromJson(Map<String, dynamic> json) => _$ActorFromJson(json);

  Map<String, dynamic> toJson() => _$ActorToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class Order {
  int count;
  int itemNumber;
  bool isRushed;
  Item item;

  @JsonKey(name: 'prep-time', fromJson: _durationFromMillseconds, toJson: _durationToMilliseconds)
  Duration prepTime;

  @JsonKey(fromJson: _dateTimeFromEpochUs, toJson: _dateTimeToEpochUs)
  final DateTime date;

  Order(this.date);

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);
}

Duration _durationFromMillseconds(int milliseconds) => Duration(milliseconds: milliseconds);
int _durationToMilliseconds(Duration duration) => duration.inMilliseconds;

DateTime _dateTimeFromEpochUs(int us) => DateTime.fromMicrosecondsSinceEpoch(us);
int _dateTimeToEpochUs(DateTime dateTime) => dateTime.microsecondsSinceEpoch;

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class Item {
  int count;
  int itemNumber;
  bool isRushed;

  Item();

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}

@JsonLiteral('data.json')
Map get glossaryData => _$glossaryDataJsonLiteral;
