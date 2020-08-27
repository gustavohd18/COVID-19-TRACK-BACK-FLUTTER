import 'package:covid19/service/covid_service.dart';
import 'package:flutter/material.dart';
import 'package:covid19/models/country.dart';
import 'package:covid19/models/world.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final _api = Modular.get<CovidService>();

  _HomeControllerBase() {
    getWorld();
    getcountries();
  }

  @observable
  int currentIndex = 0;

  @observable
  World world;

  @observable
  Country country;

  @observable
  List<Country> countries;

  @action
  getWorld() async {
    world = await _api.worlds();
  }

  @action
  getCountry(String countryName) async {
    try {
      country = await _api.country(countryName);
    } catch (exception) {
      return Container();
    }
  }

  @action
  getcountries() async {
    try {
      countries = await _api.countries();
    } catch (exception) {
      return Container();
    }
  }

  @action
  changePage(int index) {
    currentIndex = index;
  }
}
