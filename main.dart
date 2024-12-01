import 'package:flutter/material.dart';
import 'lottie_animation_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 238, 121, 11),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('FoxExpress'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Welcome Text
              const Text(
                'Welcome',
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
              Text(
                'FoxExpress',
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(height: 20),

              // Spacer

              // Lottie Animation Widget
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  LottieAnimationWidget(
                    animationPath: 'Animation.json',
                  ),
                  SizedBox(height: 20), // Spacer
                ],
              ),

              const SizedBox(height: 30), // Spacer

              // Email Field
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text('Email'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter your email',
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20), // Spacer

              // Password Field
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Password'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter your password',
                      ),
                      obscureText: true, // Hides password input
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20), // Spacer

              // Login Button
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Add login functionality here
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange),
                    child: const Text(
                      'Login',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
