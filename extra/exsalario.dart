void main() {
  ReajusteSalarial salarioAtual = ReajusteSalarial();
  salarioAtual.Reajuste(100);
}

class ReajusteSalarial {
  void Reajuste(double salario) {
    double aumento = 0;
    print('Salário antes do ajuste $salario');
    if (salario <= 280) {
      print('Percentual de aumento aplicado: 20%');
      aumento = salario * 20 / 100;
      salario += aumento + salario;
    } else if (salario > 280 && salario < 700) {
      print('Percentual de aumento aplicado: 15%');
      aumento = salario * 15 / 100;
      salario += aumento + salario;
    } else if (salario > 700 && salario < 1500) {
      print('Percentual de aumento aplicado: 10%');
      aumento = salario * 10 / 100;
      salario += aumento + salario;
    } else if (salario >= 1500) {
      print('Percentual de aumento aplicado: 5%');
      aumento = salario * 5 / 100;
      salario += aumento + salario;
    }
    print('O valor do aumento é $aumento');
    print('Seu novo salário é $salario');
  }
}
