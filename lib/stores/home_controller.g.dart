// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$currentIndexAtom = Atom(name: '_HomeControllerBase.currentIndex');

  @override
  int get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

  final _$worldAtom = Atom(name: '_HomeControllerBase.world');

  @override
  World get world {
    _$worldAtom.reportRead();
    return super.world;
  }

  @override
  set world(World value) {
    _$worldAtom.reportWrite(value, super.world, () {
      super.world = value;
    });
  }

  final _$countryAtom = Atom(name: '_HomeControllerBase.country');

  @override
  Country get country {
    _$countryAtom.reportRead();
    return super.country;
  }

  @override
  set country(Country value) {
    _$countryAtom.reportWrite(value, super.country, () {
      super.country = value;
    });
  }

  final _$countriesAtom = Atom(name: '_HomeControllerBase.countries');

  @override
  List<Country> get countries {
    _$countriesAtom.reportRead();
    return super.countries;
  }

  @override
  set countries(List<Country> value) {
    _$countriesAtom.reportWrite(value, super.countries, () {
      super.countries = value;
    });
  }

  final _$getWorldAsyncAction = AsyncAction('_HomeControllerBase.getWorld');

  @override
  Future getWorld() {
    return _$getWorldAsyncAction.run(() => super.getWorld());
  }

  final _$getCountryAsyncAction = AsyncAction('_HomeControllerBase.getCountry');

  @override
  Future getCountry(String countryName) {
    return _$getCountryAsyncAction.run(() => super.getCountry(countryName));
  }

  final _$getcountriesAsyncAction =
      AsyncAction('_HomeControllerBase.getcountries');

  @override
  Future getcountries() {
    return _$getcountriesAsyncAction.run(() => super.getcountries());
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic changePage(int index) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.changePage');
    try {
      return super.changePage(index);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentIndex: ${currentIndex},
world: ${world},
country: ${country},
countries: ${countries}
    ''';
  }
}
