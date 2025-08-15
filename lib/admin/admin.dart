import 'package:flutter/material.dart';

class Admin extends StatefulWidget {
  const Admin({super.key});




  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {

  var emailController;
  var passwordController;

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
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xff417020)),
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
                      Text('Admin Login', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Color(0xff417020)),),
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: TextFormField(
                          controller: emailController,
                          style: TextStyle(fontSize: 22),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff417020),
                                width: 2, // Border thickness
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff417020),
                                width: 2, // Border thickness
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            label: Text('Enter Email', style: TextStyle(color: Color(0xff417020)),),
                          ),
                          validator: (value) {
                            if(value == null || value.isEmpty){
                              return 'please enter a value';
                            }
                          },
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          style: TextStyle(fontSize: 22),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff417020),
                                width: 2, // Border thickness
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff417020),
                                width: 2, // Border thickness
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            label: Text('Enter Password', style: TextStyle(color: Color(0xff417020)),),
                          ),
                          validator: (value) {
                            if(value == null || value.isEmpty){
                              return 'please enter a password';
                            }
                          },
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: () {},

                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff417020),
                            ),
                            child: Text('Login', style: TextStyle(
                              fontSize: 25,
                              color: Color(0xffDBF2C0),
                              fontWeight: FontWeight.bold
                            )),
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
    );
  }
}
