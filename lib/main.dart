import 'package:flutter/material.dart';
import 'package:flutter_application_2/signIn.dart';
import 'package:flutter_application_2/signout.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: test());
  }
}

class test extends StatefulWidget {
  const test({super.key});
  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  String val = '';
  bool swit = false;
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          'assets/images/2.jpg',
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
        Column(children: [
          Container(
            margin: const EdgeInsets.only(top: 200),
            child: const Text(
              'Welcome!',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(left: 10, right: 60),
            margin: const EdgeInsets.only(left: 45),
            child: const Text(
              '"Welcome to our app, make sure that you have an account to Sign up else Sign in"',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    
                      Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const SignIn();
                    }));
                  
                  },
                  child: const Center(child: Text('Sign In'))),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(onPressed: ()
              {
                Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const Signout();
              }
          ));
          }, child: const Text('Sign Up'))
            ],
          )
        ]),
      ]),
    );
  }
}
