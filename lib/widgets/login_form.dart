import 'package:flutter/material.dart';

// TODO: Giriş yapma işlemi yapılacak -> DB'deki verilere göre kontrol edilecek

enum UserType {
  teacher,
  student,
}

class LoginForm extends StatefulWidget {
  final UserType userType;
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController studentNoController;

  const LoginForm({
    super.key,
    required this.userType,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.studentNoController,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    switch (widget.userType) {
      case UserType.teacher:
        return buildTeacherLoginForm(context);
      case UserType.student:
        return buildStudentLoginForm(context);
    }
  }

  //* ÖĞRETMEN GİRİŞ FORMU

  Widget buildTeacherLoginForm(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final ekranYuksekligi = ekranBilgisi.size.height;
    final ekranGenisligi = ekranBilgisi.size.width;

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: ekranYuksekligi / 70),
            child: SizedBox(
              width: ekranGenisligi / 2,
              child: Image.asset("assets/Icon.png"),
            ),
          ),
          Center(
            child: Form(
              key: widget.formKey,
              child: Column(
                children: [
                  //* Email
                  Padding(
                    padding: EdgeInsets.all(ekranGenisligi / 40),
                    child: TextFormField(
                      controller: widget.emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        hintText: "Email",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      validator: (email) {
                        if (email!.isEmpty) {
                          return "Email boş bırakılamaz!";
                        }

                        return null;
                      },
                    ),
                  ),

                  //* Şifre
                  Padding(
                    padding: EdgeInsets.all(ekranGenisligi / 40),
                    child: TextFormField(
                      controller: widget.passwordController,
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
                      validator: (password) {
                        if (password!.isEmpty) {
                          return "Şifre boş bırakılamaz!";
                        }

                        return null;
                      },
                    ),
                  ),

                  //* Button
                  Padding(
                    padding: EdgeInsets.all(ekranYuksekligi / 50),
                    child: SizedBox(
                      height: ekranYuksekligi / 9,
                      width: ekranGenisligi / 1.4,
                      child: TextButton(
                        onPressed: () {},
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
                            fontSize: ekranGenisligi / 26,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  //* ÖĞRENCİ GİRİŞ FORMU

  Widget buildStudentLoginForm(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final ekranYuksekligi = ekranBilgisi.size.height;
    final ekranGenisligi = ekranBilgisi.size.width;

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: ekranYuksekligi / 70),
            child: SizedBox(
              width: ekranGenisligi / 2,
              child: Image.asset("assets/Icon.png"),
            ),
          ),
          Form(
            key: widget.formKey,
            child: Column(
              children: [
                //* Öğrenci No
                Padding(
                  padding: EdgeInsets.all(ekranGenisligi / 40),
                  child: TextFormField(
                    controller: widget.studentNoController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: "Öğrenci No",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    validator: (studentNo) {
                      if (studentNo!.isEmpty) {
                        return "Öğrenci numarası boş bırakılamaz!";
                      }

                      return null;
                    },
                  ),
                ),

                //* Şifre
                Padding(
                  padding: EdgeInsets.all(ekranGenisligi / 40),
                  child: TextFormField(
                    controller: widget.passwordController,
                    keyboardType: TextInputType.visiblePassword,
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
                    validator: (password) {
                      if (password!.isEmpty) {
                        return "Şifre boş bırakılamaz!";
                      }

                      return null;
                    },
                  ),
                ),

                //* Button
                Padding(
                  padding: EdgeInsets.all(ekranYuksekligi / 50),
                  child: SizedBox(
                    height: ekranYuksekligi / 9,
                    width: ekranGenisligi / 1.4,
                    child: TextButton(
                      onPressed: () {},
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
                          fontSize: ekranGenisligi / 26,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
