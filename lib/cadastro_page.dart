import 'package:flutter/material.dart';
import 'package:tela_dio/login_page.dart';

class CadastroPage extends StatefulWidget {
  @override
  void initState() {}
  @override
  State<CadastroPage> createState() => CadastroPageState();
}

class CadastroPageState extends State<CadastroPage> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController telefoneController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(221, 21, 20, 102),
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Image.network(
            color: Colors.white,
            "https://hermes.digitalinnovation.one/assets/diome/logo.png",
          ),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        endDrawer: Drawer(
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          TextButton(
            child: const Text(
              "Sair",
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ])),
        body: SingleChildScrollView(
            child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Comece agora grátis",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                const Padding(padding: EdgeInsets.all(15)),
                const Text(
                  "Crie sua conta e make the change",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                const Padding(padding: EdgeInsets.all(15)),
                ListBody(
                  children: [
                    TextFormField(
                      controller: nomeController,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: '*Nome completo',
                        hintStyle: TextStyle(color: Colors.blueGrey),
                      ),
                    ),
                    TextFormField(
                      controller: emailController,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        hintText: '*Seu melhor @e-mail',
                        hintStyle: TextStyle(color: Colors.blueGrey),
                      ),
                    ),
                    TextFormField(
                      controller: telefoneController,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: '+55 (99) 99999-9999',
                        hintStyle: TextStyle(color: Colors.blueGrey),
                      ),
                    ),
                    TextFormField(
                      controller: senhaController,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        hintText: '*Senha',
                        hintStyle: TextStyle(color: Colors.blueGrey),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(20)),
                    FloatingActionButton.small(
                        onPressed: () {
                          if (emailController.text.trim().isNotEmpty &&
                              senhaController.text.trim().isNotEmpty &&
                              nomeController.text.trim().isNotEmpty &&
                              telefoneController.text.trim().isNotEmpty) {
                            debugPrint('Cadastro efetuado com sucesso');
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text("Erro ao efetuar o cadastro")));
                          }
                        },
                        backgroundColor: const Color.fromARGB(255, 52, 70, 78),
                        child: const Text(
                          "Criar Minha Conta Grátis",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                )
              ],
            ))));
  }
}
