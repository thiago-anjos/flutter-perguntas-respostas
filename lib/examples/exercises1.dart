main() {
  const nomes = ['thiago', 'raquel', 'miguel'];
  print(nomes.length);
  print(nomes[1]);

  Set<int> conjunto = {0, 1, 2, 3, 4, 5};
  print(conjunto is Set);

  Map<String, double> notaAlunos = {'Ana': 9.7, 'Bia': 9.2, 'Carlos': 7.8};

  for (var chave in notaAlunos.keys) {
    print('chave = $chave');
  }

  for (var valor in notaAlunos.values) {
    print('valor = $valor');
  }

  for (var registro in notaAlunos.entries) {
    print('${registro.key} = ${registro.value}');
  }

  //o tipo dynamic vc pode alterar o tipo dele
  dynamic x = 'Teste';
  x = 123;
  x = false;
  print(x);
}
