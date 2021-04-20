import 'package:flutter/material.dart';
import 'package:pokemonweb/graphql.connect.dart';
import 'package:pokemonweb/graphql/queries.dart';
import 'package:pokemonweb/models/starwars.model.dart';

class StarWarsRepository {
  Future<PlanetModel> metodoPlanet(String id) async {
    try {
      GraphqlConnect graphql = GraphqlConnect();
      Map<String, dynamic> json =
          await graphql.query(Queries.planet, variables: {"planetID": id});

      var planet = json['data']['planet'];

      return PlanetModel.fromJson(planet);
    } catch (ex) {
      debugPrint("[StarWarsRepository metodoPlanet] $ex");
      return null;
    }
  }
}
