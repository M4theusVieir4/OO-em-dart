class Data {
  int? ano;
  int? mes;
  int? dia;

  Data([this.dia = 1, this.mes = 1, this.ano = 1970]);

  //Named Construtors
  Data.com({this.dia = 1, this.mes = 1, this.ano = 1970});
  Data.ultimoDiaDoAno(this.ano) {
    dia = 31;
    mes = 12;
  }
  String obterFormatada() {
    return "${dia}/${mes}/${ano}";
  }

  String toString() {
    return obterFormatada();
  }
}

main() {
  var dataAniversario = new Data(3, 10, 2020);

  Data dataCompra = Data(1, 1, 1970);
  dataCompra.ano = 2021;
  dataCompra.mes = 12;
  dataCompra.dia = 23;

  dataAniversario.obterFormatada();
  dataCompra.obterFormatada();
  String d1 = dataAniversario.obterFormatada();
  String d2 = dataCompra.obterFormatada();
  print("A data de aniversário é $d1");
  print("Data da compra é $d2");
  print(dataCompra);
  print(new Data());
  print(Data(31));

  print(Data.com(ano: 2022));

  var dataFinal = Data.com(dia: 12, mes: 7, ano: 2024);
  print("O Mickey será público  em $dataFinal");

  print(Data.ultimoDiaDoAno(2023));
}
