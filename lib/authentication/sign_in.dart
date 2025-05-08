import 'package:auth/authentication/sign_up.dart';
import 'package:auth/services/auth_service.dart';
import 'package:flutter/material.dart';
import '../Components/costum_button.dart';
import '../Components/costum_textfield.dart';

class LogIn extends StatelessWidget {
  LogIn({super.key});

  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.lock_open, size: 120, color: Colors.blueGrey.shade400),
              SizedBox(height: 80),
              CostumTextfield(controller: emailController, hintText: "Email"),
              SizedBox(height: 20),
              CostumTextfield(controller: passController, hintText: "Password"),
              SizedBox(height: 50),
              CostumButton(
                text: 'Log In',
                onTap: () async {
                  await AuthService().signIn(
                    email: emailController.text.trim(),
                    password: passController.text.trim(),
                    context: context,
                  );
                  emailController.clear();
                  passController.clear();
                },
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Don't have an account! ",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                    child: Text(
                      ' Sign Up ',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
