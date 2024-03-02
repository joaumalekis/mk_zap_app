import 'package:flutter/material.dart';

class CampanhasPage extends StatefulWidget {
  final String title;
  const CampanhasPage({Key? key, this.title = 'CampanhasPage'}) : super(key: key);
  @override
  CampanhasPageState createState() => CampanhasPageState();
}
class CampanhasPageState extends State<CampanhasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}