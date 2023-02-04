void main() {
  var pagamento = Pagamento();
  pagamento.pagar(TipoPagamento.PIX);
}

enum TipoPagamento {
  // PIX,
  //BOLETO,
  //CARTAO;
  PIX('Pix'),
  BOLETO('Boleto'),
  CARTAO('Cartao');

  final String value;
  const TipoPagamento(this.value);
}

//extension ExtensionTipoPagamento on TipoPagamento {
//String toValue() {
//Map map = {
//TipoPagamento.PIX: 'Pix',
//TipoPagamento.BOLETO: 'Boleto',
//TipoPagamento.CARTAO: 'Cartao'
//};
//return map[this];
// }
//}

class Pagamento {
  void pagar(TipoPagamento tipoPagamento) {
    if (tipoPagamento.value == 'Pix') {
      print('Pagamento com Pix...');
    } else if (tipoPagamento.value == 'Boleto') {
      print('Pagamento com Boleto...');
    } else if (tipoPagamento.value == 'Cartão') {
      print('Pamento com Cartão...');
    }
  }
}
