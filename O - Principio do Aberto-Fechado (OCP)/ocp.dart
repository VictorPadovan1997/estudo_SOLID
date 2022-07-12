//OCP nos informa que devemos ser capaz de extender um comportamento de classe, sem modifica.

//forma incorreta no princio OCP porque....
class Pagamento {
  void pagarBoleto() => print('pagando boleto');
  void pagarImposto() => print('pagar imposto');
}

/* E se precisarmos adicionar um novo tipo de pagamento? desta forma estamos
sujeitos a modificar nosso codigo ja em producao, essa alteracao ira gerar
um novo binario para lugares onde nao necessita deste novo meio de pagamento.

Solucao:
Como solucao devemos ser capazes de extender o funcionamento da nossa classe de pagamento
ou seja pagar, POREM SEM MODIFICAR A CLASSE EXISTENTE.
*/

//Classes abstratas servem para impedir que uma classe possa ser instanciada.
// Esse é o efeito direto de se usar o modificador abstract na declaração de uma classe:

//Na nossa classe de pagamento a unica funcao dela é q tenhoo que pagar
//é um contrato que preciso pagar oq ela va ipagar nao importa, separa a responsabilidade
// cria um pagamento de boleto um de imposto e extendo do pagamento.
abstract class Pagamento2 {
  int valor = 10;
  void pagar();
}

//Na extensao reutilizamos o valor
class PagamentoBoleto extends Pagamento2 {
  @override
  void pagar() => print('pagando boleto $valor');
}

// na heranca re-implementamos o valor
class PagamentoImposto implements Pagamento2 {
  @override
  int valor = 20;

  @override
  void pagar() => print('pagando imposto $valor');
}
