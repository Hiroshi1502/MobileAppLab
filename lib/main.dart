import 'package:flutter/material.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget{
  const MainPage({super.key});


  void doSomething() {
    print ("Bla bla bla");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          leading: IconButton(
            onPressed: doSomething, 
            icon: const Icon(Icons.menu),
            ),
          backgroundColor: Colors.blue, 
          title: const Text("Profile"),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              ClipOval(
                child: Image.asset(
                  'assets/images/catcatket.jpeg',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const Text(
                "Ayam Goreng",
                style:TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )
              ),
              const Text(
                "Student",
                style:TextStyle(
                  fontSize: 10,
                )
              ),
            ], 
          ),
        )
      ),
    );
  }
}