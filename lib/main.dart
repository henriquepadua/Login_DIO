import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController email = TextEditingController();
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 32, 25, 32),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Image.network(
            "https://hermes.digitalinnovation.one/assets/diome/logo.png",
            height: 25),
      ),
      endDrawer: Drawer(backgroundColor: Colors.white),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: Column(children: [
                Text(
                  'Já tem cadastro ?',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  'Faça seu login e make the change_',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'username@mail.com',
                      icon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(60),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(0)),
                         focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(0)),
                    ),
                    style: TextStyle(
                        backgroundColor: Colors.white,
                        ),
                    controller: email,
                  ),
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: '*********',
                      icon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(60),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(0)),
                         focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(0)),
                    ),
                    style: TextStyle(
                        backgroundColor: Colors.white,
                    ),
                    controller: email,
                  ),
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: FloatingActionButton.large(
                  onPressed: (){},
                  backgroundColor: Colors.purple,
                  //label: Text(""),
                  child: Text(
                  "ENTRAR",
                  style: TextStyle(color: Colors.white),),
                )),
                Row(children: [
                  Padding(padding: 
                  EdgeInsets.all(10)),
                  Text("Esqueci minha senha",style: TextStyle(color: Colors.yellow)),
                  Padding(padding: EdgeInsets.fromLTRB(190,0,0,0)),
                  Text("Esqueci minha senha",style: TextStyle(color: Colors.green))
                ],)
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
