import "package:flutter/material.dart";

class Signout extends StatefulWidget {
  const Signout({super.key});

  @override
  State<Signout> createState() => _SignoutState();
}

class _SignoutState extends State<Signout> {
  bool valu = false;
  String email = '';
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  send() {
    if (formstate.currentState!.validate()) {
      formstate.currentState?.save();
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
            margin: const EdgeInsets.only(top: 100),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: Form(
              key: formstate,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      onSaved: (newValue) {
                        email = newValue!;
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ' Cant be Empty';
                        }
                        if (value.length < 12) {
                          return 'Invalid Phone Number';
                        }
                        return null;
                      },
                      style: const TextStyle(fontSize: 20, color: Colors.black),
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter your Phone Number',
                          labelText: 'Phone Number'),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Name Cant be Empty';
                        }
                        return null;
                      },
                      style: const TextStyle(fontSize: 20, color: Colors.black),
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter your full name',
                          labelText: 'Full Name'),
                      keyboardType: TextInputType.name,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Email Cant be Empty';
                        }
                        return null;
                      },
                      style: const TextStyle(fontSize: 20, color: Colors.black),
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter your Email',
                          labelText: 'Email'),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Password Cant be Empty';
                        }
                        if (value.length < 8) {
                          return 'The password must be more than 8 Characters';
                        }
                        return null;
                      },
                      style: const TextStyle(fontSize: 20, color: Colors.black),
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter your password',
                          labelText: 'Password'),
                      obscureText: true,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: valu,
                          onChanged: (index) {
                            setState(() {
                              valu = index!;
                            });
                          }),
                      const SizedBox(
                        width: 3,
                      ),
                      RichText(
                        text: const TextSpan(
                            text: 'I agree to the processing of',
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                  text: ' Personal data',
                                  style: TextStyle(color: Colors.blue))
                            ]),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: () {
                      if (formstate.currentState!.validate()) {
                        formstate.currentState!.save();                    
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content:
                              Text('Your registration is done Successfully')));  }
                      else {
                      }      
                    },
                    color: Colors.blue,
                    minWidth: 370, 
                    child: const Text('Sign Up'),
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
                          'Sign Up With',
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
                    height: 10,
                  ),
                  RichText(
                      text: const TextSpan(
                          text: 'Already Have an account?',
                          style: TextStyle(fontSize: 17, color: Colors.black),
                          children: [
                        TextSpan(
                            text: 'Sign In',
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
