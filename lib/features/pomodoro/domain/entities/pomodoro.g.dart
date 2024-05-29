// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPomodoroCollection on Isar {
  IsarCollection<Pomodoro> get pomodoros => this.collection();
}

const PomodoroSchema = CollectionSchema(
  name: r'Pomodoro',
  id: -5652193405469630749,
  properties: {
    r'finalDate': PropertySchema(
      id: 0,
      name: r'finalDate',
      type: IsarType.dateTime,
    ),
    r'initialDate': PropertySchema(
      id: 1,
      name: r'initialDate',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _pomodoroEstimateSize,
  serialize: _pomodoroSerialize,
  deserialize: _pomodoroDeserialize,
  deserializeProp: _pomodoroDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _pomodoroGetId,
  getLinks: _pomodoroGetLinks,
  attach: _pomodoroAttach,
  version: '3.1.0+1',
);

int _pomodoroEstimateSize(
  Pomodoro object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _pomodoroSerialize(
  Pomodoro object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.finalDate);
  writer.writeDateTime(offsets[1], object.initialDate);
}

Pomodoro _pomodoroDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Pomodoro(
    finalDate: reader.readDateTime(offsets[0]),
    initialDate: reader.readDateTime(offsets[1]),
  );
  object.id = id;
  return object;
}

P _pomodoroDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _pomodoroGetId(Pomodoro object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _pomodoroGetLinks(Pomodoro object) {
  return [];
}

void _pomodoroAttach(IsarCollection<dynamic> col, Id id, Pomodoro object) {
  object.id = id;
}

extension PomodoroQueryWhereSort on QueryBuilder<Pomodoro, Pomodoro, QWhere> {
  QueryBuilder<Pomodoro, Pomodoro, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PomodoroQueryWhere on QueryBuilder<Pomodoro, Pomodoro, QWhereClause> {
  QueryBuilder<Pomodoro, Pomodoro, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Pomodoro, Pomodoro, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Pomodoro, Pomodoro, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Pomodoro, Pomodoro, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Pomodoro, Pomodoro, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PomodoroQueryFilter
    on QueryBuilder<Pomodoro, Pomodoro, QFilterCondition> {
  QueryBuilder<Pomodoro, Pomodoro, QAfterFilterCondition> finalDateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'finalDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Pomodoro, Pomodoro, QAfterFilterCondition> finalDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'finalDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Pomodoro, Pomodoro, QAfterFilterCondition> finalDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'finalDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Pomodoro, Pomodoro, QAfterFilterCondition> finalDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'finalDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Pomodoro, Pomodoro, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Pomodoro, Pomodoro, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Pomodoro, Pomodoro, QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Pomodoro, Pomodoro, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Pomodoro, Pomodoro, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Pomodoro, Pomodoro, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Pomodoro, Pomodoro, QAfterFilterCondition> initialDateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'initialDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Pomodoro, Pomodoro, QAfterFilterCondition>
      initialDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'initialDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Pomodoro, Pomodoro, QAfterFilterCondition> initialDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'initialDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Pomodoro, Pomodoro, QAfterFilterCondition> initialDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'initialDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PomodoroQueryObject
    on QueryBuilder<Pomodoro, Pomodoro, QFilterCondition> {}

extension PomodoroQueryLinks
    on QueryBuilder<Pomodoro, Pomodoro, QFilterCondition> {}

extension PomodoroQuerySortBy on QueryBuilder<Pomodoro, Pomodoro, QSortBy> {
  QueryBuilder<Pomodoro, Pomodoro, QAfterSortBy> sortByFinalDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finalDate', Sort.asc);
    });
  }

  QueryBuilder<Pomodoro, Pomodoro, QAfterSortBy> sortByFinalDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finalDate', Sort.desc);
    });
  }

  QueryBuilder<Pomodoro, Pomodoro, QAfterSortBy> sortByInitialDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'initialDate', Sort.asc);
    });
  }

  QueryBuilder<Pomodoro, Pomodoro, QAfterSortBy> sortByInitialDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'initialDate', Sort.desc);
    });
  }
}

extension PomodoroQuerySortThenBy
    on QueryBuilder<Pomodoro, Pomodoro, QSortThenBy> {
  QueryBuilder<Pomodoro, Pomodoro, QAfterSortBy> thenByFinalDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finalDate', Sort.asc);
    });
  }

  QueryBuilder<Pomodoro, Pomodoro, QAfterSortBy> thenByFinalDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finalDate', Sort.desc);
    });
  }

  QueryBuilder<Pomodoro, Pomodoro, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Pomodoro, Pomodoro, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Pomodoro, Pomodoro, QAfterSortBy> thenByInitialDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'initialDate', Sort.asc);
    });
  }

  QueryBuilder<Pomodoro, Pomodoro, QAfterSortBy> thenByInitialDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'initialDate', Sort.desc);
    });
  }
}

extension PomodoroQueryWhereDistinct
    on QueryBuilder<Pomodoro, Pomodoro, QDistinct> {
  QueryBuilder<Pomodoro, Pomodoro, QDistinct> distinctByFinalDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'finalDate');
    });
  }

  QueryBuilder<Pomodoro, Pomodoro, QDistinct> distinctByInitialDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'initialDate');
    });
  }
}

extension PomodoroQueryProperty
    on QueryBuilder<Pomodoro, Pomodoro, QQueryProperty> {
  QueryBuilder<Pomodoro, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Pomodoro, DateTime, QQueryOperations> finalDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'finalDate');
    });
  }

  QueryBuilder<Pomodoro, DateTime, QQueryOperations> initialDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'initialDate');
    });
  }
}
