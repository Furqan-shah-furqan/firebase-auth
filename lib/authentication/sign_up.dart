import 'package:auth/Components/costum_button.dart';
import 'package:auth/Components/costum_textfield.dart';
import 'package:auth/authentication/sign_in.dart';
import 'package:auth/services/auth_service.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SignUp extends StatelessWidget {
  SignUp({super.key});

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
              Icon(Icons.lock, size: 120, color: Colors.blueGrey.shade400),
              SizedBox(height: 80),
              CostumTextfield(controller: emailController, hintText: "Email"),
              SizedBox(height: 20),
              CostumTextfield(controller: passController, hintText: "Password"),
              SizedBox(height: 50),
              CostumButton(
                text: 'Sign Up',
                onTap: () {
                  AuthService().signUp(
                    email: emailController.text,
                    password: passController.text,
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
                    " Already have an account! ",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LogIn()),
                      );
                    },
                    child: Text(
                      ' Log in  ',
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
