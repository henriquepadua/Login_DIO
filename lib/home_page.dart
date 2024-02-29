import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController email = TextEditingController();
  TextEditingController senha = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(221, 21, 20, 102),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.black,
          leading: Image.network(
            "https://hermes.digitalinnovation.one/assets/diome/logo.png",
            height: 250,
          ),
        ),
        endDrawer: const Drawer(),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 35),
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
                          onPressed: () {}, backgroundColor: Colors.purple),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(15)),
                Text(
                  "Já tem cadastro?",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                Padding(padding: EdgeInsets.all(15)),
                Text(
                  "Faça seu login e make the change._",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Padding(padding: EdgeInsets.all(15)),
                TextFormField(
                    cursorColor: Colors.black,
                    controller: email,
                    decoration: InputDecoration(
                      hintText: 'username@mail.com',
                      icon: Icon(Icons.email, color: Colors.purple),
                      filled: true,
                      fillColor: Colors.white,
                    )),
                Padding(padding: EdgeInsets.all(5)),
                TextFormField(
                    cursorColor: Colors.black,
                    controller: email,
                    decoration: InputDecoration(
                      hintText: '**********',
                      icon: Icon(Icons.lock, color: Colors.purple),
                      filled: true,
                      fillColor: Colors.white,
                    )),
                Padding(padding: EdgeInsets.all(25)),
                Row(
                  children: [
                    SizedBox(
                      height: 40.0,
                      width: 330.0,
                      child: FloatingActionButton.extended(
                          label: Text(
                            "ENTRAR",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {},
                          backgroundColor: Colors.purple),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(25)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Esqueci minha senha",style: TextStyle(color: Colors.yellow),),
                  Text("Criar conta",style: TextStyle(color: Colors.green),),
                  ],
                ),
              ]),
        ));
  }
}
