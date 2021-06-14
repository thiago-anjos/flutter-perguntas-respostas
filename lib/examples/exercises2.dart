int soma(int a, int b) {
  return a + b;
}

int exec(int a, int b, int Function(int, int) fnCallback) {
  return fnCallback(a, b);
}

class Produto {
  String nome;
  double preco;

  // Produto(String nome, double preco) {
  //   this.nome = nome;
  //   this.preco = preco;
  // }

  //chamar o construtor passando somente os parametros posicionais ( a ordem que eu defino no método é a ordem que vou chamar no médoto)
  // Produto(this.nome, this.preco);
  //parametro nomeado
  Produto({this.nome = '', this.preco = 0.0});
}

// criando um método com parametros nomeados
exibirProduto(int parametroPosicionalQuantidade,
    {String nome = '', double preco = 0}) {
  for (var i = 0; i < parametroPosicionalQuantidade; i++) {
    print('O produto 3 se chama $nome e custa $preco');
  }
}

main() {
  print('O valor da soma é ${soma(10, 2)}');

  final result = exec(2, 3, (a, b) {
    return a * b;
  });

  print('O valor da multiplicação é $result');

  // var p1 = new Produto('Lápis', 4.59);
  // p1.nome = "lapis";
  // p1.preco = 4.59;

  // var p2 = Produto('Fogão', 14.59);

  // print('O produto ${p1.nome} tem preço ${p1.preco}');
  // print('O produto ${p2.nome} tem preço ${p2.preco}');

  var p3 = Produto(nome: 'Geladeira', preco: 5999);

  print('O produto 3 se chama ${p3.nome} e custa ${p3.preco}');

  exibirProduto(1, nome: 'Carro', preco: 50.000);
  exibirProduto(51, nome: 'Luz', preco: 7);
}
