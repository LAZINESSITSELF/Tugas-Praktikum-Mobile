import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context){
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          title: const Text(
            'Login Screen'
          ),
        ),
        body: _page(),
      ),
    );
  }

  Widget _page() {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon(),
            const SizedBox(height: 30),
            textInput("email"),
            const SizedBox(height: 5),
            textInput("Password", Pass: true),
            const SizedBox(height: 20),
            logButton(),
            const SizedBox(height: 2),
            forgPass()
          ],
        ),
      ),
    );
  }

  Widget icon() {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
      ),
      child: const FlutterLogo(size: 50),
    );
  }
  
  Widget textInput(String placeholder, {bool Pass=false}){
    return TextField(
      style: const TextStyle(color: Colors.black54),
      decoration: InputDecoration(
        hintText: placeholder,
        hintStyle: const TextStyle(color: Colors.black54),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(color: Colors.black54)
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(color: Colors.grey)
        )
      ),
      obscureText: Pass,
    );
  }

  Widget logButton(){
    return ElevatedButton(
      onPressed: (){},
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(3))
        ),
        shadowColor: Colors.black,
        elevation: 3,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 10),
      ),
      child: const SizedBox(
        width: double.infinity,
        child: Text(
          "Log In",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }

  Widget forgPass(){
    return TextButton(
      onPressed: (){},
      child: const Text(
        "Forgot password?",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 15, color: Colors.black54),
      )
    );
  }
}