import 'package:flutter/material.dart';

class PaginaPokedex extends StatelessWidget {
  const PaginaPokedex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Pokedex", style: TextStyle(fontSize: 30),),
    );
  }
}