import 'package:flutter/material.dart';
import 'package:mk_zap_app/app/widgets/custom_scaffold.dart';

class CampanhasPage extends StatefulWidget {
  final String title;
  const CampanhasPage({Key? key, this.title = 'CampanhasPage'})
      : super(key: key);
  @override
  CampanhasPageState createState() => CampanhasPageState();
}

class CampanhasPageState extends State<CampanhasPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: const Center(
        child: Text(
          'Campanhas',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
