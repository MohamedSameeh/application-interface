// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool val = false;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  send() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content:Text('Your sign in is done Successfully'))
              );
    } else {
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(children: [
        Image.asset(
          'assets/images/2.jpg',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        ListView(children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 120),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: Form(
              key:formstate,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: const Text(
                      'Welcome Back!',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      validator: (text) {
                        if (text!.isEmpty) {
                          return ('invalid Email');
                        }
                        return null;
                      },
                      style: const TextStyle(fontSize: 20, color: Colors.black),
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Your Email',
                          labelText: 'Email'),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      validator: (text) {
                        if (text!.isEmpty) {
                          return ('invalid Password');
                        }
                         if (text.length < 8) {
                          return 'The password must be more than 8 Characters';
                        }
                         return null;
                        },
                      style: const TextStyle(fontSize: 20, color: Colors.black),
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Your Password',
                          labelText: 'Password'),
                      obscureText: true,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: val,
                          onChanged: (index) {
                            setState(() {
                              val = index!;
                            });
                          }),
                      const SizedBox(
                        width: 3,
                      ),
                      const Text('Remember me'),
                      const SizedBox(
                        width: 100,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forget Password?',
                          style: TextStyle(color: Colors.blue, fontSize: 15),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                    onPressed: send,
                    color: Colors.blue,
                    minWidth: 350,
                    child: const Text('Sign In'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Stack(children: [
                    Container(
                        margin: const EdgeInsets.only(top: 2),
                        child: const Divider(
                          endIndent: 10,
                          thickness: 1,
                        )),
                    Container(
                        margin: const EdgeInsets.only(left: 150, bottom: 10),
                        child: const Text(
                          'Sign In With',
                          style: TextStyle(fontSize: 13),
                        )),
                  ]),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 60,
                        height: 50,
                        margin: const EdgeInsets.only(left: 40),
                        child: const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/google (2).png'),
                            radius: 50),
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        margin: const EdgeInsets.only(left: 50),
                        child: const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/facebook .png')),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        margin: const EdgeInsets.only(left: 50),
                        child: const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/twitter.jpeg')),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        margin: const EdgeInsets.only(left: 50),
                        child: const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/insta.jpeg')),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  RichText(
                      text: const TextSpan(
                          text: 'Dont have an account?',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                          children: [
                        TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(color: Colors.blue, fontSize: 20)),
                      ])),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
          ),
        ]),
      ]),
    );
  }
}
