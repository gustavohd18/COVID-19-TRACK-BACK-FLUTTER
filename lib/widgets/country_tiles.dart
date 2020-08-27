import 'package:covid19/models/country.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CountryTile extends StatelessWidget {
  const CountryTile({
    Key key,
    @required this.country,
  }) : super(key: key);

  final Country country;

  @override
  Widget build(BuildContext context) {
    var image = "";
    if (country.countryInfo.isNotEmpty) {
      image = country.countryInfo;
    }
    return ListTile(
      leading: Image.network(
        image,
        width: 50,
        height: 50,
      ),
      title: Text(country.name),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: () {
        Modular.to.pushNamed('/countries', arguments: country);
      },
    );
  }
}
