import 'package:MyTask/task_1/users_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const UsersPage(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/sparta.jpg',
            height: 300,
            width: 300,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 28,),
          const Text("Welcome to Tafeel",
              style: TextStyle(fontSize: 22, color: Colors.blue)),
          const Text("Welcome Back to our App",
              style: TextStyle(fontSize: 14, color: Colors.black45)),
          const SizedBox(height: 30,),
          const CircularProgressIndicator(color: Colors.blue)
        ],
      ),
    );
  }
}
