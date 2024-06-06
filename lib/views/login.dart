import 'package:flutter/material.dart';
import 'package:prisma/views/principal.dart';
import 'package:prisma/views/carrinho.dart';
import 'package:prisma/hamburguer.dart';

class Login extends StatefulWidget {
  // final nomeController = TextEditingController();
  // final senhaController = TextEditingController();

  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     
      drawer: const hamburguer(),

      appBar: AppBar(

        toolbarHeight: 100,
        
        backgroundColor: Color(0xFF7D95FF),

        title: Image.asset("img/logo.jpg"),  
 
        actions:[

        IconButton(
          icon: const Icon(Icons.search),
          onPressed: (){
            showSearch(context: context, delegate: MySearchDelegate(),
            );
          },
        ),
      ],
    ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 50),

                // Logo bala
                Image.asset("img/logo-branca.jpg"),
                // Componente de Usuário
                TextField(
                    decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFFFFFF))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400)),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  hintText: "Nome do usuário",
                )),

                const SizedBox(height: 10),

                // Componente de Senha
                TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.shade400)),
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        hintText: "Senha do usuário")),

                const SizedBox(height: 10),

                //Esqueceu a senha paizão
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Esqueceu sua senha?",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(25),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      "Fazer login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}