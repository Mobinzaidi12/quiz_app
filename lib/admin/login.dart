import 'package:flutter/material.dart';
import 'package:quiz_app/ui_helper.dart';



class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDBF2C0),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.width / 0.8,
              decoration: BoxDecoration(
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
                      SizedBox(height: 50),
                      Text(
                        'Admin Login',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color(0xff417020),
                        ),

                      ),
                      SizedBox(height: 20),
                      Padding(
                          padding: EdgeInsets.all(15),
                          child: UiHelper.CustomTextFiled(emailController, 'Enter email', false, Icon(Icons.email, color: Color(0xff417020),))
                      ),
                      SizedBox(height: 20),
                      Padding(
                          padding: EdgeInsets.all(15),
                          child: UiHelper.CustomTextFiled(passwordController, 'Enter Password', true, Icon(Icons.key, color: Color(0xff417020),))
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: () {

                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff417020),
                            ),
                            child: Text(
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
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );;
  }
}
