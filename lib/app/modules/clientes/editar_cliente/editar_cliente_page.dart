import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mk_zap_app/app/widgets/custom_scaffold.dart';
import 'package:mk_zap_app/app/widgets/custom_text_field.dart';

class EditarClientePage extends StatefulWidget {
  final String title;
  const EditarClientePage({Key? key, this.title = 'EditarClientePage'})
      : super(key: key);
  @override
  EditarClientePageState createState() => EditarClientePageState();
}

class EditarClientePageState extends State<EditarClientePage> {
  final cliente = Modular.args.data;
  final _nomeController = TextEditingController();
  final _telefoneController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nomeController.text = cliente['nome'];
    _telefoneController.text = cliente['telefone'];
    _emailController.text = cliente['email'];
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
          child: Column(
            children: <Widget>[
              CustomTextField(
                  controller: _nomeController,
                  labelText: "Nome",
                  onChanged: (value) {}),
              const SizedBox(height: 20),
              CustomTextField(
                  controller: _telefoneController,
                  labelText: "Telefone",
                  onChanged: (value) {}),
              const SizedBox(height: 20),
              CustomTextField(
                  controller: _emailController,
                  labelText: "E-mail",
                  onChanged: (value) {}),
              const SizedBox(height: 20),
              LayoutBuilder(
                builder: (context, constraints) {
                  return Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                          minimumSize: Size(
                            constraints.maxWidth * 0.7,
                            50,
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Salvar',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
