import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Okul Sistemi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Okul Sistemi'),
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
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);

    final ekranYuksekligi = ekranBilgisi.size.height;
    final ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: ekranYuksekligi / 70),
                child: SizedBox(
                  width: ekranGenisligi / 2,
                  child: Image.asset("assets/Icon.png"),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranGenisligi / 40),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Kullanıcı Adı",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    )),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranGenisligi / 40),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Şifre",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    )),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranYuksekligi / 50),
                child: SizedBox(
                  height: ekranYuksekligi / 9,
                  width: ekranGenisligi / 1.4,
                  child: TextButton(
                    onPressed: () {
                      print("Giriş Yapıldı");
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.grey),
                    ),
                    child: Text(
                      "Giriş Yap",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: ekranGenisligi / 26),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
