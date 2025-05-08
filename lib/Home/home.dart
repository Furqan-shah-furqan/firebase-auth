import 'package:auth/services/auth_service.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {
              AuthService().signOut();
              Navigator.pop(context);
            },
            icon: Icon(Icons.logout_rounded),
          ),
        ],
      ),
      body: Center(child: Text("HOME")),
    );
  }
}
