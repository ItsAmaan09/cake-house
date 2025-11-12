import 'package:cake_house/core/widgets/google_button.dart';
import 'package:flutter/material.dart';
import '../../core/widgets/custom_button.dart';
import '../../core/widgets/custom_textfield.dart';
import '../../routes/app_routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xFFFFF5F5),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome Back!", style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 20),
            CustomTextField(label: "Email", controller: emailController),
            const SizedBox(height: 10),
            CustomTextField(label: "Password", controller: passwordController, isPassword: true),
            const SizedBox(height: 20),
            CustomButton(
              text: "Login",
              onPressed: () => Navigator.pushReplacementNamed(context, AppRoutes.home),
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                Expanded(child: Divider(color: Colors.grey)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text("OR"),
                ),
                Expanded(child: Divider(color: Colors.grey)),
              ],
            ),
            const SizedBox(height: 10,),
            GoogleButton(onPressed: (){},),
            const SizedBox(height: 20,),
            CustomButton(
              text: "Sign Up",
              onPressed: () => Navigator.pushReplacementNamed(context, AppRoutes.signup),
              isPrimary: false,
            ),
          ],
        ),
      ),
    );
  }
}
