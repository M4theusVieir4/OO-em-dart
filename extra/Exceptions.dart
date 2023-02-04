void main() {
  try {
    //tentar alguma coisa
    print((2 / 0).toInt());
  } catch (e, stackStrace) {
    //capturar a falha
    print('printando o erro $e');
    //rethrow; // propagar o erro
    //throw Exception("Ocorreu um erro xpto");//retornar um novo erro
    throw CustomError('Erro customizado');
  }
}

class CustomError implements Exception {
  final String error;
  CustomError(this.error);
}
