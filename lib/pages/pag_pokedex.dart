import 'package:flutter/material.dart';
import 'package:google_signin/pokemon_list.dart';

class PaginaPokedex extends StatelessWidget {
  const PaginaPokedex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PokemonList(),
      ],
    );
  }
}