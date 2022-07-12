//Principio da responsabilidade Unica
//Uma classe deve ter apenas um motivo para mudar
//Sua responsabilidade é sempre em cima de um e apenas um ator.
/* 

*/
//logica crucial do negocio conta corrente tem que saber se ela e valida ou nao
//Forma crucial:
class ContaCorrente {
  validaContaExiste() {}

  salvarModificacoes() {
    print('salvando db..');
  }
}

/*
Solucao:
Devemos separar cada responsabilidade para sua regra de negocio crucial,
um objetivo nao pode e deve fazer mais do que é o dominio dele.
Lembre-se: sua funcionalidade nao importa a granularidade
nao deve fazer o que nao e proposto.
*/

class ContacorrenteRepository {
  void save() => print('salvando...');
}

class ContaCorrente2 {
  ContacorrenteRepository _repository = new ContacorrenteRepository();

  validaContaExiste() {
    // logica
  }

  void salvarModificacoes() {
    _repository.save();
  }
}
