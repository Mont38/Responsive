import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final txtEmail = TextFormField(
      decoration: const InputDecoration(
          label: Text('Email'), enabledBorder: OutlineInputBorder()),
    );
    final txtPass = TextFormField(
      decoration: const InputDecoration(
          label: Text('password'), enabledBorder: OutlineInputBorder()),
      obscureText: true,
    );
    final SpaceHorizontal = SizedBox(
      height: 10,
    );
    final txtName = TextFormField(
        decoration: const InputDecoration(
            label: Text('Name'), enabledBorder: OutlineInputBorder()));

    final RoundedLoadingButtonController btnok =
        RoundedLoadingButtonController();

    void _doSomething() async {
      Timer(Duration(seconds: 1), () {
        btnok.success();
      });
    }

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/Background.jpg'),
                  fit: BoxFit.cover,
                  opacity: 0.5)),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    txtEmail,
                    SpaceHorizontal,
                    txtPass,
                    SpaceHorizontal,
                    txtName,
                    SpaceHorizontal,
                    SpaceHorizontal,
                    RoundedLoadingButton(
                      child: const Text('Tap me!',
                          style: TextStyle(color: Colors.white)
                          ,),
                      controller: btnok,
                      onPressed: _doSomething,
                    )
                  ],
                ),
                Positioned(
                    bottom: 550,
                    child: Image.asset(
                      "assets/usuario.png",
                      height: 150,
                    ))
              ],
            ),
          ),
        ));
  }
}
