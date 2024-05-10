import 'package:flutter/material.dart';

import '../widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKeyTeacher = GlobalKey<FormState>();
    final formKeyStudent = GlobalKey<FormState>();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final studentNoController = TextEditingController();

    return DefaultTabController(
      length: 2, // 2 sekme (Öğretmen ve Öğrenci)
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: const Center(child: Text('Login Page')),
          bottom: const TabBar(
            labelStyle: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w600),
            indicatorColor: Colors.grey,
            tabs: [
              Tab(
                child: Text("Öğretmen"),
              ),
              Tab(
                child: Text("Öğrenci"),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            LoginForm(
              userType: UserType.teacher,
              formKey: formKeyTeacher,
              emailController: emailController,
              passwordController: passwordController,
              studentNoController: TextEditingController(),
            ),
            LoginForm(
              userType: UserType.student,
              formKey: formKeyStudent,
              emailController: TextEditingController(),
              passwordController: passwordController,
              studentNoController: studentNoController,
            ),
          ],
        ),
      ),
    );
  }
}
