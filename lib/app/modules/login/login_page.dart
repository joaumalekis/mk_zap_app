import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mk_zap_app/app/config/router_map.dart';
import 'login_store.dart';

class LoginPage extends StatefulWidget {
  final String title;

  const LoginPage({Key? key, this.title = 'Home'}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final LoginStore store;

  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();

  String? validateInput(String value) {
    if (value.isEmpty) {
      return 'Por favor, insira algum texto';
    }
    return null;
  }

  @override
  void initState() {
    super.initState();
    store = Modular.get<LoginStore>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (context) => Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FlutterLogo(size: 100),
              const SizedBox(height: 60),
              const Text(
                'Bem-vindo ao app!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Faça seu login',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _loginController,
                decoration: InputDecoration(
                  labelText: 'Login',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onChanged: (value) {
                  validateInput(value);
                },
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                obscureText: true,
                onChanged: (value) {
                  validateInput(value);
                },
              ),
              const SizedBox(height: 20),
              LayoutBuilder(
                builder: (context, constraints) {
                  return Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 62, 90, 73),
                          minimumSize: Size(constraints.maxWidth * 0.7,
                              50), // 50% da largura da tela
                        ),
                        onPressed: () {
                          if (_loginController.text.isEmpty ||
                              _passwordController.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text(
                                      'Por favor, preencha todos os campos')),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text(
                                      'Login efetuado com sucesso! Redirecionando...')),
                            );
                            Modular.to.pushReplacementNamed('/dashboard');
                          }
                        },
                        child: const Text('Entrar',
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                      ),
                      const SizedBox(height: 20), // Espaçamento entre os botões
                      TextButton(
                        onPressed: () {
                          Modular.to.pushNamed(RouterMap.novoUsuario);
                        },
                        child: const Text('Cadastre-se',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 62, 90, 73))),
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
