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

  factory World.fromJson(Map doc) {
    return World(
        cases: doc['cases'],
        deaths: doc['deaths'],
        recivered: doc['recovered'],
        affectedCountries: doc['affectedCountries'],
        lastUpdated: DateTime.fromMillisecondsSinceEpoch(doc['updated']));
  }
}
