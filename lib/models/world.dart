class World {
  int cases;
  int deaths;
  int recivered;
  int affectedCountries;
  DateTime lastUpdated;

  World(
      {this.cases,
      this.deaths,
      this.recivered,
      this.affectedCountries,
      this.lastUpdated});

  factory World.fromJSON(Map<String, dynamic> json) {
    return World(
        cases: json['cases'],
        deaths: json['deaths'],
        recivered: json['recovered'],
        affectedCountries: json['affectedCountries'],
        lastUpdated: DateTime.fromMillisecondsSinceEpoch(json['updated']));
  }
}
