import '../modelo/carro.dart';

main() {
  Carro c1 = new Carro(320);
  while (!c1.estaNoLimite()) {
    print("A velocidade atual é ${c1.acelerar()} Km/h");
  }
  print("O carro chegou na velocidade máxima com ${c1.velocidadeAtual} Km/h");
  while (c1.velocidadeAtual > 0) {
    print("A velocidade atual é ${c1.frear()}");
  }

  print("O carro parou com a velocidade ${c1.velocidadeAtual} Km/h");
}
