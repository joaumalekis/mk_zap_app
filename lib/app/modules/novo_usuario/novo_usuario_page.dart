import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mk_zap_app/app/config/router_map.dart';
import 'package:mk_zap_app/app/widgets/custom_scaffold.dart';
import 'package:mk_zap_app/app/widgets/custom_text_field.dart';

class NovoUsuarioPage extends StatefulWidget {
  final String title;
  const NovoUsuarioPage({Key? key, this.title = 'NovoUsuarioPage'})
      : super(key: key);
  @override
  NovoUsuarioPageState createState() => NovoUsuarioPageState();
}

class NovoUsuarioPageState extends State<NovoUsuarioPage> {
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
  final _confirmacaoSenhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      showDrawer: false,
      body: Observer(
        builder: (context) => Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FlutterLogo(size: 100),
              const SizedBox(height: 60),
              Text(
                'Faça seu cadastro',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800]),
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: _nomeController,
                labelText: 'Nome',
                onChanged: (value) {},
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: _emailController,
                labelText: 'E-mail',
                onChanged: (value) {},
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: _senhaController,
                labelText: 'Senha',
                obscureText: true,
                onChanged: (value) {},
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: _confirmacaoSenhaController,
                labelText: 'Confirmação de Senha',
                obscureText: true,
                onChanged: (value) {},
              ),
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
                        onPressed: () {
                          if (_nomeController.text.isEmpty ||
                              _emailController.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content:
                                    Text('Por favor, preencha todos os campos'),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                    'Login efetuado com sucesso! Redirecionando...'),
                              ),
                            );
                            Modular.to
                                .pushReplacementNamed(RouterMap.dashboard);
                          }
                        },
                        child: const Text(
                          'Cadastrar',
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
