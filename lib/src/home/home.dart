import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_animations/src/constants.dart';
import 'package:flutter_animations/src/details/details.dart';
import 'package:flutter_animations/src/home/tarjeta.dart';
import 'package:flutter_animations/src/models/tarjetas.dart';

class Home extends StatefulWidget {
  Home() : super();

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Tarjeta> listaTarjetas;
  GridView gridView;
  GlobalKey<RefreshIndicatorState> refreshKey;

  @override
  void initState() {
    super.initState();
    refreshKey = GlobalKey<RefreshIndicatorState>();
    listaTarjetas = List();
    listaTarjetas = tarjetas;
  }

  Future<Null> refrescarLista() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      listaTarjetas = tarjetas;
    });
    return null;
  }

  Widget lista() {
    return listaTarjetas.length > 0
        ? GridView.builder(
            itemCount: listaTarjetas.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
            ),
            primary: false,
            padding: const EdgeInsets.all(20),
            itemBuilder: (context, index) => FadeInUpBig(
              duration: Duration(milliseconds: listaTarjetas[index].duracion),
              child: MyTarjeta(
                  tarjeta: listaTarjetas[index],
                  texto: Text(
                    listaTarjetas[index].texto,
                    style: TextStyle(
                      color: listaTarjetas[index].color_t,
                    ),
                  ),
                  press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detalles(
                            tarjeta: listaTarjetas[index],
                          ),
                        ),
                      )),
            ),
          )
        : Container(
            alignment: Alignment.center,
            child: Text("No hay datos para mostrar"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown[400],
          title: Text(
            "Flutter Animations",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: RefreshIndicator(
          key: refreshKey,
          onRefresh: () async {
            setState(() {
              listaTarjetas = [];
            });
            await refrescarLista();
          },
          child: lista(),
        ),
        floatingActionButton: FadeInUpBig(
          child: FloatingActionButton(
            child: Icon(Icons.restore),
            backgroundColor: Colors.orange[400],
            onPressed: () async {
              setState(() {
                listaTarjetas = [];
              });
              await refrescarLista();
            },
          ),
        ));
  }
}
