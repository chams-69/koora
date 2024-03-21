import 'package:flutter/material.dart';
import 'package:koora/home.dart';
import 'package:koora/sign_up.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double a = 0;

    double width(double width) {
      a = width / 430;
      return screenWidth * a;
    }

    double height(double height) {
      a = height / 932;
      return screenHeight * a;
    }

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/4aw.png',
            fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.only(top: height(350)),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Color.fromRGBO(0, 0, 0, 1),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Image.asset(
            'assets/images/smoke.png',
            fit: BoxFit.cover,
            opacity: const AlwaysStoppedAnimation(0.15),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(width(20), 0, width(20), width(20)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: height(230)),
                    child: Text(
                      'Welcome Back',
                      style: TextStyle(
                        color: const Color(0xFFF1EED0),
                        fontSize: width(32),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: width(80)),
                  TextField(
                    style: const TextStyle(color: Color(0xFFF1EED0)),
                    decoration: InputDecoration(
                      hintText: 'User name Or Email Or Phone Number',
                      hintStyle: TextStyle(
                        color: const Color(0xFFBEBCA5),
                        fontSize: width(16),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    obscureText: true,
                    style: const TextStyle(color: Color(0xFFF1EED0)),
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: const Color(0xFFBEBCA5),
                        fontSize: width(16),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                        color: const Color(0xFFF1EED0),
                        fontSize: width(16),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color(0xFFF1EED0),
                      backgroundColor:
                          const Color(0xFF599068), // button's shape
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Home(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.all(width(13)),
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: width(20),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                          color: const Color(0xFFF1EED0),
                          fontSize: width(16),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUp(),
                            ),
                          );
                        },
                        child: Text(
                          'Register here',
                          style: TextStyle(
                            color: const Color(0xff599068),
                            fontSize: width(16),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Image.asset('assets/images/google.png'),
                            Expanded(
                              child: Center(
                                child: Text(
                                  'Sign In with Google',
                                  style: TextStyle(
                                    color: const Color(0xFFF1EED0),
                                    fontSize: width(16),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Image.asset('assets/images/facebook.png'),
                            Expanded(
                              child: Center(
                                child: Text(
                                  'Sign In with Facebook',
                                  style: TextStyle(
                                    color: const Color(0xFFF1EED0),
                                    fontSize: width(16),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
