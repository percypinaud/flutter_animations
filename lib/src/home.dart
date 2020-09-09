import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_animations/src/screens/card.dart';
import 'package:flutter_animations/src/models/tarjetas.dart';

class Home extends StatefulWidget {
  Home() : super();

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Tarjeta> tarjetas;
  GridView gridView;
  GlobalKey<RefreshIndicatorState> refreshKey;

  @override
  void initState() {
    super.initState();
    refreshKey = GlobalKey<RefreshIndicatorState>();
    tarjetas = List();
    addTarjeta();
  }

  addTarjeta() {
    if (tarjetas.length <= 0) {
      tarjetas.add(new Tarjeta(1, 100, "FadeOutLeft", Colors.black));
      tarjetas.add(new Tarjeta(1, 100, "FadeOutRight", Colors.black));
      tarjetas.add(new Tarjeta(2, 200, "ElasticInLeft", Colors.black));
      tarjetas.add(new Tarjeta(2, 300, "ElasticInRight", Colors.black));
      tarjetas.add(new Tarjeta(3, 400, "FadeInLeft", Colors.black));
      tarjetas.add(new Tarjeta(3, 500, "FadeInRight", Colors.white));
      tarjetas.add(new Tarjeta(4, 600, "BounceInLeft", Colors.white));
      tarjetas.add(new Tarjeta(4, 700, "BounceInRight", Colors.white));
      tarjetas.add(new Tarjeta(5, 800, "FadeInDown", Colors.white));
      tarjetas.add(new Tarjeta(5, 900, "FadeInUp", Colors.white));
    }
  }

  Future<Null> refreshLista() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      addTarjeta();
    });
    return null;
  }

  Widget lista() {
    return tarjetas.length > 0
        ? GridView.count(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            primary: false,
            padding: const EdgeInsets.all(20),
            children: List.generate(tarjetas.length, (index) {
              return FadeInUpBig(
                duration: Duration(seconds: tarjetas[index].duration),
                child: MyCard(
                  color_b: tarjetas[index].color,
                  texto: Text(
                    tarjetas[index].texto,
                    style: TextStyle(
                      color: tarjetas[index].color_t,
                    ),
                  ),
                ),
              );
            }))
        : Container(
            alignment: Alignment.center,
            child: Text("No hay datos para mostrar"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Animations"),
          backgroundColor: Colors.orange[400],
        ),
        body: RefreshIndicator(
          key: refreshKey,
          onRefresh: () async {
            setState(() {
              tarjetas = [];
            });
            await refreshLista();
          },
          child: lista(),
        ),
        floatingActionButton: FadeInUpBig(
          child: FloatingActionButton(
            child: Icon(Icons.restore),
            backgroundColor: Colors.orange[400],
            onPressed: () async {
              setState(() {
                tarjetas = [];
              });
              await refreshLista();
            },
          ),
        ));
  }
}
