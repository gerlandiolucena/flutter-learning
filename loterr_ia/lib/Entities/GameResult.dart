import 'dart:core';

import 'package:loterr_ia/Entities/BaseResponse.dart';
import 'package:loterr_ia/Entities/DescricaoDetalhe.dart';
import 'package:intl/intl.dart';

final formatCurrency = new NumberFormat.simpleCurrency();

class RateioPremio {
  final int faixa;
  final int numeroDeGanhadores;
  final double valorPremio;
  final String descricaoFaixa;

  RateioPremio({this.faixa, this.numeroDeGanhadores, this.valorPremio, this.descricaoFaixa});

  factory RateioPremio.fromJson(Map<String, dynamic> json) {
    return RateioPremio(
      faixa: json['faixa'],
      numeroDeGanhadores: json['numeroDeGanhadores'],
      valorPremio: (json['valorPremio']).toDouble(),
      descricaoFaixa: json['descricaoFaixa'],
    );
  }
}

class ResultadoJogo {
  final String tipoJogo;
  final String nomeMunicipioUFSorteio;
  final String dataApuracao;
  final double valorArrecadado;
  final double valorEstimadoProximoConcurso;
  final double valorAcumuladoProximoConcurso;
  final double valorAcumuladoConcursoEspecial;
  final double valorAcumuladoConcurso_0_5;
  final bool acumulado;
  final int indicadorConcursoEspecial;
  final List<String> dezenasSorteadasOrdemSorteio;
  final int numeroJogo;
  final String nomeTimeCoracaoMesSorte;
  final int tipoPublicacao;
  final String observacao;
  final String localSorteio;
  final String dataProximoConcurso;
  final int numeroConcursoAnterior;
  final int numeroConcursoProximo;
  final double valorTotalPremioFaixaUm;
  final int numeroConcursoFinal_0_5;
  final List<String> listaDezenas;
  final List<String> listaDezenasSegundoSorteio;
  final List<String> listaMunicipioUFGanhadores;
  final List<RateioPremio> listaRateioPremio;
  final String concurso;
  final String name;

  ResultadoJogo({this.tipoJogo,
    this.nomeMunicipioUFSorteio,
    this.dataApuracao,
    this.valorArrecadado,
    this.valorEstimadoProximoConcurso,
    this.valorAcumuladoProximoConcurso,
    this.valorAcumuladoConcursoEspecial,
    this.valorAcumuladoConcurso_0_5,
    this.acumulado,
    this.indicadorConcursoEspecial,
    this.dezenasSorteadasOrdemSorteio,
    this.numeroJogo,
    this.nomeTimeCoracaoMesSorte,
    this.tipoPublicacao,
    this.observacao,
    this.localSorteio,
    this.dataProximoConcurso,
    this.numeroConcursoAnterior,
    this.numeroConcursoProximo,
    this.valorTotalPremioFaixaUm,
    this.numeroConcursoFinal_0_5,
    this.listaDezenas,
    this.listaDezenasSegundoSorteio,
    this.listaMunicipioUFGanhadores,
    this.listaRateioPremio,
    this.concurso,
    this.name});


  factory ResultadoJogo.fromJson(Map<String, dynamic> json) {
    return ResultadoJogo(
      tipoJogo: json["tipoJogo"],
      nomeMunicipioUFSorteio: json["nomeMunicipioUFSorteio"],
      dataApuracao: json["dataApuracao"],
      valorArrecadado: (json["valorArrecadado"]).toDouble(),
      valorEstimadoProximoConcurso: (json["valorEstimadoProximoConcurso"]).toDouble(),
      valorAcumuladoProximoConcurso: (json["valorAcumuladoProximoConcurso"]).toDouble(),
      valorAcumuladoConcursoEspecial: (json["valorAcumuladoConcursoEspecial"]).toDouble(),
      valorAcumuladoConcurso_0_5: (json["valorAcumuladoConcurso_0_5"]).toDouble(),
      acumulado: json["acumulado"],
      indicadorConcursoEspecial: json["indicadorConcursoEspecial"],
      dezenasSorteadasOrdemSorteio: (json["dezenasSorteadasOrdemSorteio"] as Iterable<dynamic> ?? const <dynamic>[]).map((dynamic jsonObject) => jsonObject.toString()).toList(),
      numeroJogo: json["numeroJogo"],
      nomeTimeCoracaoMesSorte: json["nomeTimeCoracaoMesSorte"],
      tipoPublicacao: json["tipoPublicacao"],
      observacao: json["observacao"],
      localSorteio: json["localSorteio"],
      dataProximoConcurso: json["dataProximoConcurso"],
      numeroConcursoAnterior: json["numeroConcursoAnterior"],
      numeroConcursoProximo: json["numeroConcursoProximo"],
      valorTotalPremioFaixaUm: (json["valorTotalPremioFaixaUm"]).toDouble(),
      numeroConcursoFinal_0_5: json["numeroConcursoFinal_0_5"],
      listaDezenas: (json["listaDezenas"] as Iterable<dynamic> ?? const <dynamic>[]).map((dynamic jsonObject) => jsonObject.toString()).toList(),
      listaDezenasSegundoSorteio: (json["listaDezenasSegundoSorteio"] as Iterable<dynamic> ?? const <dynamic>[]).map((dynamic jsonObject) => jsonObject.toString()).toList(),
      listaMunicipioUFGanhadores: (json["listaMunicipioUFGanhadores"] as Iterable<dynamic> ?? const <dynamic>[]).map((dynamic jsonObject) => jsonObject.toString()).toList(),
      listaRateioPremio: (json["listaRateioPremio"]  as Iterable<dynamic> ?? const <dynamic>[]).map((dynamic jsonObject) => RateioPremio.fromJson(jsonObject)).toList(),
      concurso: json["concurso"],
      name: json["name"],
    );
  }

  List<DescricaoDetalhe> topoResultado() {
    final formatCurrency = new NumberFormat.simpleCurrency();

    return [
      DescricaoDetalhe(descricao: "Tipo Jogo", detalhe: tipoJogo),
      DescricaoDetalhe(descricao: "Município Sorteio", detalhe: nomeMunicipioUFSorteio),
      DescricaoDetalhe(descricao: "Data Apuração", detalhe: dataApuracao),
      DescricaoDetalhe(descricao: "Valor Arrecadado", detalhe: formatCurrency.format(valorArrecadado)),
      DescricaoDetalhe(descricao: "Local sorteio", detalhe: localSorteio),
    ];
  }

  List<DescricaoDetalhe> proximoConcursoResultado() {
    final formatCurrency = new NumberFormat.simpleCurrency();

    return [
      DescricaoDetalhe(descricao: "Obs", detalhe: observacao),
      DescricaoDetalhe(descricao: "Data Próximo", detalhe: dataProximoConcurso),
      DescricaoDetalhe(descricao: "Próx. Concurso", detalhe: dataApuracao),
    ];
  }

  String tituloConcurso() {
    return concurso + " - ${ acumulado ? "Acumulado" : "Premiado"}";
  }
}

class ResultadoJogoResponse {
  final BaseResponse<ResultadoJogo> result;

  ResultadoJogoResponse({this.result});

  factory ResultadoJogoResponse.fromJson(Map<String, dynamic> json) {
    final response = BaseResponse<ResultadoJogo>(
      success: json["success"],
      data: (json['data'] as Iterable<dynamic> ?? const <dynamic>[]).map((dynamic jsonObject) => ResultadoJogo.fromJson(jsonObject)).toList()
    );

    return ResultadoJogoResponse(result: response);
  }
}