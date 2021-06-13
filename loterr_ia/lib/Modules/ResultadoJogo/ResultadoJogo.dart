import 'package:flutter/material.dart';
import 'package:loterr_ia/Entities/DescricaoDetalhe.dart';
import 'package:loterr_ia/Entities/GameResult.dart';
import 'package:loterr_ia/Modules/ResultadoJogo/TopoResultadoJogo.dart';
import 'package:loterr_ia/Modules/Shared/DescricaoDetalheWidget.dart';
import 'package:loterr_ia/Repository/LotericasAPI.dart';

import '../SelectNumbers.dart';

class ResultadoJogoWidget extends StatefulWidget {
  @override
  _ResultadoJogoWidgetState createState() => _ResultadoJogoWidgetState();
}

class _ResultadoJogoWidgetState extends State<ResultadoJogoWidget> {

  Future<ResultadoJogoResponse> _resultadoJogo;
  final _jogo = "lotofacil";

  @override
  void initState() {
    super.initState();
    final _lotericasApi = LotericasAPI();
    _resultadoJogo = _lotericasApi.carregarUltimoResultado(_jogo);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Lotéricas'),
        actions: [
          IconButton(icon: Icon(Icons.list), onPressed: (){}),
        ],
      ),
      body: FutureBuilder<ResultadoJogoResponse>(
        future: _resultadoJogo,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final tituloConcurso = snapshot.data.result.data[0].tituloConcurso();
            final result = snapshot.data.result.data[0].topoResultado();
            final proximoConcurso = snapshot.data.result.data[0].proximoConcursoResultado();
            final listaDezenas = snapshot.data.result.data[0].dezenasSorteadasOrdemSorteio;
            return CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  pinned: true,
                  expandedHeight: 44.0,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text(tituloConcurso),
                  ),
                ),
                SliverFixedExtentList(
                  itemExtent: 50.0,
                  delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                      return Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(),
                            color: const Color(0xFFEFEFEF)
                        ),
                        margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        child: DetalheDescricaoWidget(descricaoDetalhe: result[index]),
                      );
                    },
                    childCount: result.length,
                  ),
                ),
                SliverGrid(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: size.width / 5,
                    mainAxisSpacing: 0.0,
                    crossAxisSpacing: 0.0,
                    childAspectRatio: 1.7,
                  ),
                  delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.zero,
                        padding: EdgeInsets.zero,
                        alignment: Alignment.center,
                        child: CircleButton(onTap: () {}, name: int.parse(listaDezenas[index]).toString(), selected: true,),
                      );
                    },
                    childCount: listaDezenas.length,
                  ),
                ),
                SliverFixedExtentList(
                  itemExtent: 50.0,
                  delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                      return Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(),
                            color: const Color(0xFFEFEFEF)
                          ),
                          margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                          child: DetalheDescricaoWidget(descricaoDetalhe: proximoConcurso[index]),
                      );
                    },
                    childCount: proximoConcurso.length,
                  ),
                ),
              ],
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }

          return CircularProgressIndicator();
        },
      ),
    );
  }
}