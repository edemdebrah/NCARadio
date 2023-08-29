// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDABStationCollection on Isar {
  IsarCollection<DABStation> get dABStations => this.collection();
}

const DABStationSchema = CollectionSchema(
  name: r'DABStation',
  id: 552447485725488813,
  properties: {
    r'channelUrl': PropertySchema(
      id: 0,
      name: r'channelUrl',
      type: IsarType.string,
    ),
    r'freqChannel': PropertySchema(
      id: 1,
      name: r'freqChannel',
      type: IsarType.string,
    ),
    r'isFavorite': PropertySchema(
      id: 2,
      name: r'isFavorite',
      type: IsarType.bool,
    ),
    r'location': PropertySchema(
      id: 3,
      name: r'location',
      type: IsarType.string,
    ),
    r'stationName': PropertySchema(
      id: 4,
      name: r'stationName',
      type: IsarType.string,
    )
  },
  estimateSize: _dABStationEstimateSize,
  serialize: _dABStationSerialize,
  deserialize: _dABStationDeserialize,
  deserializeProp: _dABStationDeserializeProp,
  idName: r'no',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _dABStationGetId,
  getLinks: _dABStationGetLinks,
  attach: _dABStationAttach,
  version: '3.1.0+1',
);

int _dABStationEstimateSize(
  DABStation object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.channelUrl.length * 3;
  bytesCount += 3 + object.freqChannel.length * 3;
  bytesCount += 3 + object.location.length * 3;
  bytesCount += 3 + object.stationName.length * 3;
  return bytesCount;
}

void _dABStationSerialize(
  DABStation object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.channelUrl);
  writer.writeString(offsets[1], object.freqChannel);
  writer.writeBool(offsets[2], object.isFavorite);
  writer.writeString(offsets[3], object.location);
  writer.writeString(offsets[4], object.stationName);
}

DABStation _dABStationDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DABStation(
    channelUrl: reader.readString(offsets[0]),
    freqChannel: reader.readString(offsets[1]),
    isFavorite: reader.readBoolOrNull(offsets[2]) ?? false,
    location: reader.readString(offsets[3]),
    no: id,
    stationName: reader.readString(offsets[4]),
  );
  return object;
}

P _dABStationDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _dABStationGetId(DABStation object) {
  return object.no;
}

List<IsarLinkBase<dynamic>> _dABStationGetLinks(DABStation object) {
  return [];
}

void _dABStationAttach(IsarCollection<dynamic> col, Id id, DABStation object) {}

extension DABStationQueryWhereSort
    on QueryBuilder<DABStation, DABStation, QWhere> {
  QueryBuilder<DABStation, DABStation, QAfterWhere> anyNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DABStationQueryWhere
    on QueryBuilder<DABStation, DABStation, QWhereClause> {
  QueryBuilder<DABStation, DABStation, QAfterWhereClause> noEqualTo(Id no) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: no,
        upper: no,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterWhereClause> noNotEqualTo(Id no) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: no, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: no, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: no, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: no, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterWhereClause> noGreaterThan(Id no,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: no, includeLower: include),
      );
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterWhereClause> noLessThan(Id no,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: no, includeUpper: include),
      );
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterWhereClause> noBetween(
    Id lowerNo,
    Id upperNo, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerNo,
        includeLower: includeLower,
        upper: upperNo,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DABStationQueryFilter
    on QueryBuilder<DABStation, DABStation, QFilterCondition> {
  QueryBuilder<DABStation, DABStation, QAfterFilterCondition> channelUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'channelUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition>
      channelUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'channelUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition>
      channelUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'channelUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition> channelUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'channelUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition>
      channelUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'channelUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition>
      channelUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'channelUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition>
      channelUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'channelUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition> channelUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'channelUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition>
      channelUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'channelUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition>
      channelUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'channelUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition>
      freqChannelEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'freqChannel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition>
      freqChannelGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'freqChannel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition>
      freqChannelLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'freqChannel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition>
      freqChannelBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'freqChannel',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition>
      freqChannelStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'freqChannel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition>
      freqChannelEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'freqChannel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition>
      freqChannelContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'freqChannel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition>
      freqChannelMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'freqChannel',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition>
      freqChannelIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'freqChannel',
        value: '',
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition>
      freqChannelIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'freqChannel',
        value: '',
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition> isFavoriteEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isFavorite',
        value: value,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition> locationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition>
      locationGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition> locationLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition> locationBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'location',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition>
      locationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition> locationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition> locationContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition> locationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'location',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition>
      locationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'location',
        value: '',
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition>
      locationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'location',
        value: '',
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition> noEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'no',
        value: value,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition> noGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'no',
        value: value,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition> noLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'no',
        value: value,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition> noBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'no',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition>
      stationNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition>
      stationNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition>
      stationNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition>
      stationNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stationName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition>
      stationNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'stationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition>
      stationNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'stationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition>
      stationNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'stationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition>
      stationNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'stationName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition>
      stationNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stationName',
        value: '',
      ));
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterFilterCondition>
      stationNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'stationName',
        value: '',
      ));
    });
  }
}

extension DABStationQueryObject
    on QueryBuilder<DABStation, DABStation, QFilterCondition> {}

extension DABStationQueryLinks
    on QueryBuilder<DABStation, DABStation, QFilterCondition> {}

extension DABStationQuerySortBy
    on QueryBuilder<DABStation, DABStation, QSortBy> {
  QueryBuilder<DABStation, DABStation, QAfterSortBy> sortByChannelUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelUrl', Sort.asc);
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterSortBy> sortByChannelUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelUrl', Sort.desc);
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterSortBy> sortByFreqChannel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freqChannel', Sort.asc);
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterSortBy> sortByFreqChannelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freqChannel', Sort.desc);
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterSortBy> sortByIsFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.asc);
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterSortBy> sortByIsFavoriteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.desc);
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterSortBy> sortByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterSortBy> sortByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterSortBy> sortByStationName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stationName', Sort.asc);
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterSortBy> sortByStationNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stationName', Sort.desc);
    });
  }
}

extension DABStationQuerySortThenBy
    on QueryBuilder<DABStation, DABStation, QSortThenBy> {
  QueryBuilder<DABStation, DABStation, QAfterSortBy> thenByChannelUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelUrl', Sort.asc);
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterSortBy> thenByChannelUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelUrl', Sort.desc);
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterSortBy> thenByFreqChannel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freqChannel', Sort.asc);
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterSortBy> thenByFreqChannelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freqChannel', Sort.desc);
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterSortBy> thenByIsFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.asc);
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterSortBy> thenByIsFavoriteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.desc);
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterSortBy> thenByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterSortBy> thenByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterSortBy> thenByNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'no', Sort.asc);
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterSortBy> thenByNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'no', Sort.desc);
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterSortBy> thenByStationName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stationName', Sort.asc);
    });
  }

  QueryBuilder<DABStation, DABStation, QAfterSortBy> thenByStationNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stationName', Sort.desc);
    });
  }
}

extension DABStationQueryWhereDistinct
    on QueryBuilder<DABStation, DABStation, QDistinct> {
  QueryBuilder<DABStation, DABStation, QDistinct> distinctByChannelUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'channelUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DABStation, DABStation, QDistinct> distinctByFreqChannel(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'freqChannel', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DABStation, DABStation, QDistinct> distinctByIsFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isFavorite');
    });
  }

  QueryBuilder<DABStation, DABStation, QDistinct> distinctByLocation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'location', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DABStation, DABStation, QDistinct> distinctByStationName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stationName', caseSensitive: caseSensitive);
    });
  }
}

extension DABStationQueryProperty
    on QueryBuilder<DABStation, DABStation, QQueryProperty> {
  QueryBuilder<DABStation, int, QQueryOperations> noProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'no');
    });
  }

  QueryBuilder<DABStation, String, QQueryOperations> channelUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'channelUrl');
    });
  }

  QueryBuilder<DABStation, String, QQueryOperations> freqChannelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'freqChannel');
    });
  }

  QueryBuilder<DABStation, bool, QQueryOperations> isFavoriteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isFavorite');
    });
  }

  QueryBuilder<DABStation, String, QQueryOperations> locationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'location');
    });
  }

  QueryBuilder<DABStation, String, QQueryOperations> stationNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stationName');
    });
  }
}
