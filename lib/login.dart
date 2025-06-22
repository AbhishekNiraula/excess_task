import 'package:flutter/material.dart';
import 'HomeScreen.dart';
class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final validator = GlobalKey<FormState>();
  @override
  void dispose()
  {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Center(
          child: const Text('eWallet', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 36,
            color: Colors.white,
          ),),
        ),
      ),
      body:Center(
        child: SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Login.', style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),),
                  const SizedBox(height: 16),
                  Form(
                    key: validator,
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Email Address', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: emailController,
                        validator: (value){
                          if (value == null || value.isEmpty) {
                            return "Please enter your email address";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "Enter your email address",
                          filled: true,
                          fillColor: Color(0xFFD9D9D9),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(5)
                          )
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text('Password', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: passwordController,
                        validator: (value){
                          if (value == null || value.isEmpty){
                            return "Enter Password";
                          }
                          return null;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFD9D9D9),
                          hintText: 'Enter your password',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          
                        ),
                      ),
                      const SizedBox(height: 16),
                      Center(
                        child: Container(
                          width: double.infinity,
                          child: TextButton(onPressed: () async {
                            if (validator.currentState?.validate() ?? false)
                              {
                                final email = emailController.text.trim();
                                final password = passwordController.text;

                                if (email == "abhisek@gmail.com" && password == "1234") {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(content: Text('Login Successful')),
                                  );
                                  await Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homescreen()));
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(content: Text('Invalid email and/or password')),
                                  );
                                }
                              }
                          },style: TextButton.styleFrom(
                            backgroundColor: Theme.of(context).primaryColor,

                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            )
                          ), child: const Text('LOGIN', style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ))),
                        ),
                      )
                    ],
                  ))
                ],
              ),
              )
            ],
          ),
        ),
            ),
      )
    );
  }
}
