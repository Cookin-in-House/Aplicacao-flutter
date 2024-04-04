
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
        "/login":(context) => LoginPage()
      },
    );
  }
}
class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,//alinha so elementos no centro
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(labelText: "Usuário"),),
              TextField(
                decoration: InputDecoration(labelText: "Senha"),
              ),
              ElevatedButton( onPressed: null, child: Text("Login")),
            ],

          )
          

          )


        ),
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
          child:         
            ListView(
  // This next line does the trick.
  scrollDirection: Axis.horizontal,
  children: <Widget>[
    Container(
      width: 250,
      color: Colors.red,
    ),
    Container(
      width: 250,
      color: Colors.blue,
    ),
    Container(
      width: 250,
      color: Colors.green,
    ),
    Container(
      width: 250,
      color: Colors.yellow,
    ),
    Container(
      width: 250,
      color: Colors.orange,
    ),
  ],
),

        ),
        
      ),
    );
  }
}
