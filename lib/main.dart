import 'package:flutter/material.dart';

void main() => runApp(
      TransferenciaAPP(),
    );

class TransferenciaAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FormularioTrnansferencia(),
      ),
    );
  }
}

class FormularioTrnansferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criando Transferência'),
      ),
      body: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              style: TextStyle(
                fontSize: 24.0,
              ),
              decoration: InputDecoration(
                  labelText: 'Número da Conta', hintText: '0000'),
              keyboardType: TextInputType.number,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              style: TextStyle(
                fontSize: 24.0,
              ),
              decoration: InputDecoration(
                  icon: Icon(Icons.monetization_on),
                  labelText: 'Valor',
                  hintText: '0.00'),
              keyboardType: TextInputType.number,
            ),
          ),
          ElevatedButton(
            onPressed: () => {},
            child: Text('Confirmar'),
          ),
        ],
      ),
    );
  }
}

class ListaTransferencias extends StatelessWidget {
  const ListaTransferencias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transferências'),
      ),
      body: Column(
        children: <Widget>[
          ItemTransferencia(Transferencia(100.0, 1000)),
          ItemTransferencia(Transferencia(200.0, 2000)),
          ItemTransferencia(Transferencia(300.0, 3000)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Pressionou o botão');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      ),
    );
  }
}

class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);

  @override
  String toString() {
    return 'Transferencia{valor: $valor, numeroConta: $numeroConta}';
  }
}
