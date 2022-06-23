import 'package:flutter/material.dart';
import 'package:introscreen/signinpage.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Container(
              height: 530,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  children: [
                    const Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'Outfit',
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      height: 50.0,
                      width: 320.0,
                      child: const Padding(
                          padding: EdgeInsets.only(left: 10.0, right: 10.0),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'example@gmail.com',
                                hintStyle: TextStyle(
                                    color: Colors.grey, fontFamily: 'Outfit')),
                          )),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      height: 50.0,
                      width: 320.0,
                      child: const Padding(
                          padding: EdgeInsets.only(left: 10.0, right: 10.0),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                    color: Colors.grey, fontFamily: 'Outfit')),
                          )),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      height: 50.0,
                      width: 320.0,
                      child: const Padding(
                          padding: EdgeInsets.only(left: 10.0, right: 10.0),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Confirm Password',
                                hintStyle: TextStyle(
                                    color: Colors.grey, fontFamily: 'Outfit')),
                          )),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.blueAccent,
                        ),
                        height: 50.0,
                        width: 320.0,
                        child: Center(
                          child: InkWell(
                            onTap: () {},
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Outfit',
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                      child: RichText(
                          text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: "Already using the app?",
                            style: TextStyle(
                                fontFamily: 'Outfit', fontSize: 15.0)),
                        TextSpan(
                            text: '  Sign In',
                            style: TextStyle(
                                fontFamily: 'Outfit',
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold))
                      ])),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
