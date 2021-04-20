class Queries {
  static final String planet = """
    query planet(\$planetID: ID){
      planet(planetID: \$planetID){
      name
      diameter
      orbitalPeriod
      gravity
      population
      surfaceWater
	  }
  }
  """;
}
