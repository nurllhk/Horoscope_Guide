import 'package:flutter/material.dart';
import 'package:burc/models/burc_model.dart';
class BurcItem extends StatelessWidget {
  final Burc ListelenenBurc;
  const BurcItem({required this.ListelenenBurc ,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(ListelenenBurc.burcKucukResim),
      ),
    );
  }
}
