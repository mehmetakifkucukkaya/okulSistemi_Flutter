// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:okul_sistemi/constants/constants.dart';
import 'package:okul_sistemi/pages/HomePage.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    var user = Constants().users;

    var userName = user[0]["userName"]!;
    var password = user[0]["password"]!;

    var ekranBilgisi = MediaQuery.of(context);

    final ekranYuksekligi = ekranBilgisi.size.width;
    final ekranGenisligi = ekranBilgisi.size.width;

    //* Keys
    var kullaniciAdiController = TextEditingController();
    var sifreController = TextEditingController();

    var formKey = GlobalKey<FormState>();

    return Column(
      children: [
        Form(
          key: formKey,
          child: Column(
            children: [
              //* Kullanici Adi
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
                  validator: (kullaniciAdiController) {
                    if (kullaniciAdiController!.isEmpty) {
                      return "Kullanıcı adı boş bırakılamaz !";
                    }
                    return null;
                  },
                ),
              ),
              //* Sifre
              Padding(
                padding: EdgeInsets.all(ekranGenisligi / 40),
                child: TextFormField(
                  controller: sifreController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Şifre",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  validator: (sifreController) {
                    if (sifreController!.isEmpty) {
                      return "Şifre boş bırakılamaz !";
                    }

                    if (sifreController.length < 6) {
                      return "Şifreniz en az 6 karakter olmalıdır !";
                    }
                    return null;
                  },
                ),
              ),

              //*Button
              Padding(
                padding: EdgeInsets.all(ekranYuksekligi / 50),
                child: SizedBox(
                  height: ekranYuksekligi / 9,
                  width: ekranGenisligi / 1.4,
                  child: TextButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        String enteredUsername =
                            kullaniciAdiController.text;
                        String enteredPassword = sifreController.text;

                        if (enteredUsername.trim() == userName &&
                            enteredPassword.trim() == password) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Center(
                                child: Text(
                                    'Kullanıcı adı veya şifre hatalı!'),
                              ),
                            ),
                          );
                        }
                      }
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
        )
      ],
    );
  }
}
