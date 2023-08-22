class Pessoa{
  String _nome = '';
  double _peso = 0;
  double _altura = 0;
  
  Pessoa(String nome, double peso, double altura)
  {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  void setNome(String nome) => _nome = nome;
  void setPeso(double peso) => _peso = peso;
  void setAltura(double altura) =>  _altura = altura;

  String getNome() => _nome;
  double getPeso() => _peso;
  double getAltura() => _altura;
}
