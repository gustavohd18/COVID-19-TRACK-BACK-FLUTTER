import 'package:covid19/models/country.dart';
import 'package:covid19/widgets/row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CountryDetailsPage extends StatelessWidget {
  final Country country;
  const CountryDetailsPage({Key key, this.country}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildBodyCountry());
  }

  Widget _buildBodyCountry() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildHeader(country.name, country.countryInfo),
          const SizedBox(height: 20.0),
          buildRow(Colors.blue, Icons.info_outline, "Total de Infectados",
              country.cases.toString()),
          const SizedBox(height: 16.0),
          buildRow(Colors.red, Icons.info, "Mortes", country.deaths.toString()),
          const SizedBox(height: 16.0),
          buildRow(Colors.green, Icons.info_outline, "Recuperados",
              country.recivered.toString()),
        ],
      ),
    );
  }

  Container _buildHeader(String titulo, String url) {
    return Container(
        padding: const EdgeInsets.fromLTRB(0, 50.0, 0, 32.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
          color: Colors.blue,
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Positioned(
                top: 15.0,
                left: 10.0,
                child: GestureDetector(
                  onTap: () {
                    Modular.to.pushNamed('/home');
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 34.0,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  titulo,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white)
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
              const SizedBox(height: 5.0),
            ],
          ),
        ));
  }
}
