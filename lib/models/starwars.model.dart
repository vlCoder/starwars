import 'package:flutter/material.dart';

class PlanetModel {
  final String id;
  final String name;
  final int diameter;
  final int orbitalPeriod;
  final String gravity;
  final double population;
  final double surfaceWater;

  PlanetModel(
      {@required this.id,
      @required this.name,
      @required this.diameter,
      @required this.orbitalPeriod,
      @required this.gravity,
      @required this.population,
      @required this.surfaceWater});

  static PlanetModel fromJson(Map<String, dynamic> json) {
    PlanetModel planet = PlanetModel(
      id: json['id'],
      name: json['name'],
      diameter: json['diameter'],
      orbitalPeriod: json['orbitalPeriod'],
      gravity: json['gravity'],
      population: json['population'],
      surfaceWater: json['surfaceWater'],
    );

    return planet;
  }

  String toString() {
    return """{
      id: $id,
      name: $name,
      number: $diameter,
      fleeRate: $orbitalPeriod,
      gravity: $gravity,
      population: $population,
      surfaceWater: $surfaceWater 
    }""";
  }
}
