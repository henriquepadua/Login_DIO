import 'dart:math';

class GerarNumeroAleatorioService{
    static int  gerarNumeroAleatorio(int maximoaleatorio) {
    Random numeroaleatorio = Random();
    return numeroaleatorio.nextInt(maximoaleatorio);
  }
}