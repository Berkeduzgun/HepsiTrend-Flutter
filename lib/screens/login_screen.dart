import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          width: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "E-Posta",
                  //helper: Text("E-potanizi Giriniz"),
                  border: OutlineInputBorder(),
                ),
                // keyboardType: TextInputType.number,
                // inputFormatters: [
                //   FilteringTextInputFormatter.digitsOnly,
                // ],
              ),
              SizedBox(height: 10,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Sifre",
                  //helper: Text("Sifre Giriniz"),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                context.go("/home");
              }, 
              child: const Text("Giris Yap"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  context.pushReplacement("/register");
                }, 
                child: const Text("Kayit Ol"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}