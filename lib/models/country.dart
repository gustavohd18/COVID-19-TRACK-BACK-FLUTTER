class Country {
  String name;
  String countryInfo;
  int todayDeaths;
  int critical;
  int cases;
  int deaths;
  int recivered;

  Country(
      {this.name,
      this.countryInfo,
      this.todayDeaths,
      this.critical,
      this.cases,
      this.deaths,
      this.recivered});

  factory Country.fromJSON(Map<String, dynamic> json) {
    return Country(
      name: json['country'],
      countryInfo: json['countryInfo'][
          'flag'], // if some item inside other json use this way to get parameter
      todayDeaths: json['todayDeaths'],
      critical: json['critical'],
      cases: json['cases'],
      deaths: json['deaths'],
      recivered: json['recovered'],
    );
  }
}
