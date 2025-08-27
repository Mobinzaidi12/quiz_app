import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/pages/home.dart';
import 'package:quiz_app/ui_helper.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;


  Future<void> login(String email, String password) async {
    email = email.trim();
    password = password.trim();

    if (email.isEmpty || password.isEmpty) {
      return UiHelper.CustomAlertBox(
          context, "Please enter both email and password");
    }

    setState(() => isLoading = true);

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email, password: password);

      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const Home()),
        );
      }
    } on FirebaseAuthException catch (ex) {
      final messages = {
        'user-not-found': "No user found with this email",
        'wrong-password': "Incorrect password",
        'invalid-email': "Invalid email format",
        'user-disabled': "This account has been disabled",
      };
      UiHelper.CustomAlertBox(
          context, messages[ex.code] ?? "Login failed: ${ex.message}");
    } catch (e) {
      UiHelper.CustomAlertBox(context, "An error occurred: $e");
    } finally {
      if (mounted) setState(() => isLoading = false);
    }
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDBF2C0),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.width / 0.8,
              decoration: const BoxDecoration(
                color: Color(0xff417020),
                borderRadius: BorderRadius.vertical(top: Radius.circular(100)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Align(
              alignment: Alignment.topCenter,
              child: SafeArea(
                child: Text(
                  'Lets Start with Admin',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff417020),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50.0),
                elevation: 5.0,
                clipBehavior: Clip.antiAlias,
                child: Container(
                  height: 450,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      const SizedBox(height: 50),
                      Text(
                        'Admin Login',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color(0xff417020),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: UiHelper.CustomTextFiled(
                            emailController,
                            'Enter email',
                            false,
                            const Icon(Icons.email, color: Color(0xff417020))
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: UiHelper.CustomTextFiled(
                            passwordController,
                            'Enter Password',
                            true,
                            const Icon(Icons.key, color: Color(0xff417020))
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: isLoading
                                ? null
                                : () {
                              login(
                                emailController.text.trim(),
                                passwordController.text.trim(),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff417020),
                              disabledBackgroundColor: Colors.grey,
                            ),
                            child: isLoading
                                ? const CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  Colors.white),
                            )
                                : Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 25,
                                color: Color(0xffDBF2C0),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}