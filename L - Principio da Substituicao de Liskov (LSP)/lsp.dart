// LSP - Os subtitulos devem ser substituidos pelo seu tipo base
//Podera alternar sem q quebre o sistema

// eu tenho uma classe conta metodo depositar para poupanca corrente;

// EXEMPLOS INCORRETO
abstract class Conta {
  void depositar(int val) => print('realizando...');
  void tranferir(int val) => print('realizando...');
  void realizarEmprestimo() => print('realizando...');
}

class ContaCorrente implements Conta {
  void depositar(int val) => print('realizando...');
  void tranferir(int val) => print('realizando...');
  void realizarEmprestimo() => print('realizando...');
}

//A conta poupanca nao faz transferencia e nao realiza emprestimo
class ContaPoupanca implements Conta {
  void depositar(int val) => print('realizando...');
  void tranferir(int val) =>
      throw Exception('Conta poupanca nao faz transferencia');
  void realizarEmprestimo() =>
      throw Exception('Conta poupanca nao faz emprestimo');
}
