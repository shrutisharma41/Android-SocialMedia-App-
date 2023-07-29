import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../components/button.dart';
import '../components/text_field.dart';
class RegisterPage extends StatefulWidget {
  final Function()?onTap;
  const RegisterPage({
    super.key,
    required this.onTap
    });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>{
  final emailTextController=TextEditingController();
  final passwordTextController=TextEditingController();
  void signIn()async{
 await FirebaseAuth.instance.signInWithEmailAndPassword(
  email: emailTextController.text, 
  password: passwordTextController.text,
  );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body:SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:25.0),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.lock,
              size: 100,
              
              ),
             const SizedBox(height:50),
              Text(
                "Welcome Back,you have been missed!",
                style: TextStyle(
                      color: Colors.grey[700],
                    ),
              ),
              const SizedBox(height: 25),
              MyTextField(
                controller: emailTextController,
                 hintText: 'Email', 
                 obscureText:false,
                 ),
                const SizedBox(height: 10),
                 MyTextField(
                controller: passwordTextController,
                 hintText: 'Password', 
                 obscureText:true,
                 ),
                 const SizedBox(height: 10), 
                 MyButton(onTap: signIn,
                  text: 'Sign In'
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text("Not a member?",
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child:const Text("Register now",
                      style:TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ) ,),
                    ),
                  ],
                  ),

            ],
            ),
        ),
      ),
    ),
      );
  }
}