import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:withyouauthdemo/Services/auth_services.dart';

import '../rounded_button.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String _email = '';
  String _password = '';
  String _name = '';

  CreateAccountPressed() async {
    bool emailValid = RegExp(
      r"a-zA-Z0-9.a-zA-Z0-9.!#%&'*+-/=?_}~]+@a-zA-Z0-9+.a-zA-Z]+").hasMatch(_email);
    if(emailValid){
      http.Response response = await AuthServices.register(_name, _email, _password);
      Map responseMap = JsonDecoder(response.body);
      if(response.statuscode==200){

      }

    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
        title: const Text('Registration',
        style: TextStyle(fontSize: 20,
        fontWeight:FontWeight.bold
        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: "Name",
              ),
              onChanged: (value) {
                _name = value;
              },
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: "Email",
              ),
              onChanged: (value) {
                _email = value;
              },
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: "Password",
              ),
              onChanged: (value) {
                _password = value;
              },
            ),
            const SizedBox(
              height: 40,
            ),
            RoundedButton(
              btnText: 'Create Account',
              onBtnPressed: ()=> CreateAccountPressed(),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const LoginScreen(),));
    
              },
              child: const Text("Already have an Account",
              style: TextStyle(decoration: TextDecoration.underline),),
            )

          ],
        ),
      ),

    );
  }
}
