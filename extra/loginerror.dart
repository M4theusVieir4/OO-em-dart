void main() {
  Login login = Login();
  try {
    login.logar();
  } on PasswordLengthError catch (e) {
    print('Falhou ao logar.');
  } catch (e) {
    print('Outro erro');
  } finally {
    print('Finalizou.');
  }
}

class Login {
  void logar() {
    String user = 'adimin';
    String pass = '123';
    if (pass.length <= 6) throw PasswordLengthError();
  }
}

class PasswordLengthError implements Exception {
  PasswordLengthError();
}
