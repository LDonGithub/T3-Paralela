import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_signin/pages/pag_favoritos.dart';
import 'package:google_signin/pages/pag_inicio.dart';
import 'package:google_signin/pages/pag_pokedex.dart';
import 'package:google_signin/pages/pag_votar.dart';
import 'package:google_signin/screens/google_login.dart';
import 'package:google_signin/services/firebase_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pagina_actual = 0;

  List<Widget> paginas = [
    PaginaInicio(),
    PaginaPokedex(),
    PaginaVotar(),
    PaginaFavoritos(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
        paginas[pagina_actual], 
        bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            pagina_actual = index;
          });
        },
        currentIndex: pagina_actual,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio", backgroundColor: Color.fromARGB(179, 130, 127, 134)),
          const BottomNavigationBarItem(icon: Icon(Icons.catching_pokemon), label: "Pokedex", backgroundColor: Color.fromARGB(179, 130, 127, 134)),
          const BottomNavigationBarItem(icon: Icon(Icons.thumbs_up_down), label: "Votar", backgroundColor: Color.fromARGB(179, 130, 127, 134)),
          const BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favoritos", backgroundColor: Color.fromARGB(179, 130, 127, 134))
        ],
      ),
    );
  }
}
