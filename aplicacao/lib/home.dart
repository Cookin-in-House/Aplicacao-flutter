import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => PrimeiraTela(),
        "/home":(context) => SegundaTela()
      },
    );
  }
}

class PrimeiraTela extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cooking in House"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 35,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favoritos',
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: 'Social',
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.egg_alt),
              label: 'Home',
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil',
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.door_sliding),
              label: 'Despensa',
              ),
          ],
            selectedItemColor: Color.fromARGB(255, 220, 67, 67), // Define a cor selecionada
            unselectedItemColor: Colors.grey, // Define a cor dos itens não selecionados
            backgroundColor: Colors.black, // Define a cor de fundo do BottomNavigationBar
            type: BottomNavigationBarType.fixed, // Define o tipo (fixo ou deslizante)
        ),
        body: Center(
          child: Image.network("https://st1.uvnimg.com/a0/58/83b214c44fd6a603962990be095a/ovo-frito-frigideira-0722-1400x800.jpg"),
        ),
      ),
    );
  }
}

class SegundaTela extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: 
          AppBar(

        ),
      ),
    );
  }
}