import 'package:flutter/material.dart';
import 'package:okul_sistemi/widgets/login_form.dart';

//TODO: Validation işlemleri yapılacak

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);

    final ekranYuksekligi = ekranBilgisi.size.height;
    final ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text('Login Page'),
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
              const LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
