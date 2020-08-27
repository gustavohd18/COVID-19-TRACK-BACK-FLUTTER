import 'package:covid19/models/country.dart';
import 'package:covid19/models/world.dart';
import 'package:dio/dio.dart';

class CovidService {
  final Dio _dio = Dio();
  String _url = "https://corona.lmao.ninja/v2";

  Future<World> worlds() async {
    Response response = await _dio.get('$_url/all');
    if (response.statusCode != 200) {
      throw Exception();
    } else {
      return World.fromJSON(response.data);
    }
  }

  Future<Country> country(String country) async {
    Response response = await _dio.get('$_url/countries/$country');
    if (response.statusCode != 200) {
      throw Exception();
    } else {
      return Country.fromJSON(response.data);
    }
  }

  Future<List<Country>> countries() async {
    Response response = await _dio.get('$_url/countries');
    if (response.statusCode != 200) {
      throw Exception();
    } else {
      var _list = (response.data as List)
          .map((items) => Country.fromJSON(items))
          .toList();
      return _list;
    }
  }
}
