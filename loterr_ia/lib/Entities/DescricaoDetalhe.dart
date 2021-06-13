
class DescricaoDetalhe {
  String descricao;
  String detalhe;

  DescricaoDetalhe({this.descricao, this.detalhe});

  factory DescricaoDetalhe.fromJson(Map<String, dynamic> json) {
    return DescricaoDetalhe(
      descricao: json["descricao"],
      detalhe: json["detalhe"],
    );
  }
}