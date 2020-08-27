import 'package:covid19/models/country.dart';
import 'package:covid19/widgets/country_tiles.dart';
import 'package:flutter/material.dart';

class CountryList extends StatelessWidget {
  final List<Country> _countries;

  CountryList(this._countries);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _countries.length,
      separatorBuilder: (BuildContext context, int index) => Divider(),
      itemBuilder: (context, index) {
        final country = _countries[index];
        return CountryTile(country: country);
      },
    );
  }
}
