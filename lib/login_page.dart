import 'package:flutter/material.dart';
import 'package:tela_dio/cadastro_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController senha = TextEditingController();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(221, 21, 20, 102),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.black,
          leading: Image.network(
            "https://hermes.digitalinnovation.one/assets/diome/logo.png",
            height: 250,
          ),
        ),
        endDrawer: const Drawer(),
        body: SingleChildScrollView(
            child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 7.0,
                      width: 80.0,
                      child: FloatingActionButton.small( 
                          heroTag: null,
                          onPressed: () {}, backgroundColor: Colors.purple),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.all(15)),
                const Text(
                  "Já tem cadastro?",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                const Padding(padding: EdgeInsets.all(15)),
                const Text(
                  "Faça seu login e make the change._",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                const Padding(padding: EdgeInsets.all(15)),
                TextFormField(
                    cursorColor: Colors.black,
                    controller: email,
                    decoration: const InputDecoration(
                      hintText: 'username@mail.com',
                      icon: Icon(Icons.email, color: Colors.purple),
                      filled: true,
                      fillColor: Colors.white,
                    )),
                const Padding(padding: EdgeInsets.all(5)),
                TextFormField(
                    obscureText: isObscureText,
                    cursorColor: Colors.black,
                    controller: senha,
                    decoration: InputDecoration(
                        hintText: '**********',
                        icon: Icon(Icons.lock, color: Colors.purple),
                        filled: true,
                        fillColor: Colors.white,
                        suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                isObscureText = !isObscureText;
                              });
                            },
                            child: Icon(isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility)))),
                const Padding(padding: EdgeInsets.all(25)),
                Row(
                  children: [
                    SizedBox(
                      height: 40.0,
                      width: 330.0,
                      child: FloatingActionButton.extended(
                          label: const Text(
                            "ENTRAR",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            if (email.text.trim() ==
                                    'henrique.lommes@gmail.com' &&
                                senha.text.trim() == '1234') {
                              debugPrint('Login efetuado com sucesso');
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content:
                                          Text("Erro ao efetuar o login")));
                            }
                          },
                          backgroundColor: Colors.purple),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.all(25)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text("Esqueci minha senha",
                            style: TextStyle(color: Colors.yellow))),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context, 
                            MaterialPageRoute(builder: (context) => CadastroPage()
                          ),);
                        }, 
                        child: const Text("Criar conta",
                            style: TextStyle(color: Colors.green))),
                  ],
                ),
              ]),
        )));
  }
}