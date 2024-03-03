import 'package:flutter/material.dart';
import 'package:mk_zap_app/app/widgets/custom_scaffold.dart';

class ConfiguracoesPage extends StatefulWidget {
  final String title;
  const ConfiguracoesPage({Key? key, this.title = 'ConfiguracoesPage'})
      : super(key: key);
  @override
  ConfiguracoesPageState createState() => ConfiguracoesPageState();
}

class ConfiguracoesPageState extends State<ConfiguracoesPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: const Center(
        child: Text(
          'Configurações',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
