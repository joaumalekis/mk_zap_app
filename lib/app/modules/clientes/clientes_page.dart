import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mk_zap_app/app/config/router_map.dart';
import 'package:mk_zap_app/app/widgets/custom_scaffold.dart';

class ClientesPage extends StatefulWidget {
  final String title;
  const ClientesPage({Key? key, this.title = 'Clientes'}) : super(key: key);
  @override
  ClientesPageState createState() => ClientesPageState();
}

class ClientesPageState extends State<ClientesPage> {
  List<Map<String, dynamic>> clientes = [
    {
      'nome': 'Cliente 1',
      'telefone': '123456789',
      'email': 'cliente1@email.com'
    },
    {
      'nome': 'Cliente 2',
      'telefone': '987654321',
      'email': 'cliente2@email.com'
    },
    // Adicione mais clientes aqui
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        body: ListView.builder(
      itemCount: clientes.length,
      itemBuilder: (context, index) {
        final cliente = clientes[index];
        return Dismissible(
          key: Key(cliente['nome']),
          direction: DismissDirection.endToStart,
          onDismissed: (direction) {
            if (direction == DismissDirection.endToStart) {
              // Remova o item da lista de clientes
              setState(() {
                clientes.removeAt(index);
              });
            }
          },
          background: Container(
            color: Colors.red,
            child: const Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.delete, color: Colors.white),
              ),
            ),
          ),
          child: GestureDetector(
            onTap: () {
              Modular.to
                  .pushNamed(RouterMap.editarClientes, arguments: cliente);
            },
            child: Card(
              color: Colors.green[50],
              margin: const EdgeInsets.only(left: 8, right: 8, top: 8),
              child: ListTile(
                title: Text(cliente['nome']),
                trailing: IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {
                    // Adicione a ação de edição aqui
                  },
                ),
              ),
            ),
          ),
        );
      },
    ));
  }
}
