import 'package:flutter/material.dart';
import 'package:pokemonweb/repositories/starwars.repository.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _planetController = TextEditingController();

  @override
  void initState() {
    _planetController.addListener(() {});
    super.initState();

    onlyPlanet();
  }

  onlyPlanet() async {
    StarWarsRepository repo = StarWarsRepository();
    var onlyPlanet = await repo.metodoPlanet("30");

    debugPrint(onlyPlanet.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
              left: 200.0, top: 20.0, right: 200.0, bottom: 10.0),
          child: TextFormField(
            controller: _planetController,
            decoration: InputDecoration(labelText: 'Planetas'),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(left: 200.0, top: 20.0, right: 200.0),
              child: RaisedButton(
                child: Text('Procurar Planetas'),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
