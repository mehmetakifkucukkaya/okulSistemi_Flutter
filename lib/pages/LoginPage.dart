// ignore_for_file: file_names

import 'package:flutter/material.dart';

//TODO: Validation işlemleri yapılacak

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);

    final ekranYuksekligi = ekranBilgisi.size.height;
    final ekranGenisligi = ekranBilgisi.size.width;

    var kullaniciAdiController = TextEditingController();
    var sifreController = TextEditingController();

    return Scaffold(
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
                  controller: kullaniciAdiController,
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
                  controller: sifreController,
                  decoration: InputDecoration(
                    suffix: GestureDetector(
                      onTap: () {
                        print("Görünür");
                      },
                      child: const Icon(
                        Icons.visibility_outlined,
                        color: Colors.black,
                      ),
                    ),
                    hintText: "Şifre",
                    filled: true,
                    fillColor: Colors.white,
                    border: const OutlineInputBorder(
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
