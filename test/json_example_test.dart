// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';

import 'json_example/json_example.dart';
import 'package:test/test.dart';

void main() {
  test('Person JsonSerializable', () {
    final person = Person('Inigo', 'Montoya', DateTime(1560, 5, 5))
      ..orders = [Order(DateTime.now())..item = (Item()..count = 42)];

    final personJson = _encode(person);

    print(personJson);

    final person2 = Person.fromJson(json.decode(personJson) as Map<String, dynamic>);

    expect(person.firstName, person2.firstName);
    expect(person.lastName, person2.lastName);
    expect(person.dateOfBirth, person2.dateOfBirth);
    expect(person.orders.single.date, person2.orders.single.date);
    expect(person.orders.single.item.count, 42);

    expect(_encode(person2), equals(personJson));
  });

  test('Actor JsonSerializable', () {
    final actor_1 = Actor('Jakob', 'Bardram', DateTime(1560, 5, 5), "professor");

    final actor_json = _encode(actor_1);

    print(actor_json);

    final actor_2 = Actor.fromJson(json.decode(actor_json) as Map<String, dynamic>);

    expect(actor_1.firstName, actor_2.firstName);
    expect(actor_1.lastName, actor_2.lastName);
    expect(actor_1.dateOfBirth, actor_2.dateOfBirth);
    expect(actor_1.role, actor_2.role);

    expect(_encode(actor_2), equals(actor_json));
  });

  test('JsonLiteral', () {
    expect(glossaryData, hasLength(1));
  });
}

String _encode(Object object) => const JsonEncoder.withIndent(' ').convert(object);
