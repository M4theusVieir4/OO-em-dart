void main() {
  Exercicios exercicios = Exercicios();
  exercicios.exer1(6, 8);
}

class Exercicios {
  void exer1(int n1, int n2) {
    if (n1 >= n2) {
      print(n1);
    } else {
      print(n2);
    }
  }
}
