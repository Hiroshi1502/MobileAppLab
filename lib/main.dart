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
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 6
                ),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(88.888),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.school, size: 17, color: Colors.yellow),
                    SizedBox(width: 4),
                    Text ("Student"),
                  ]
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        color: Colors.yellowAccent
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/anwar.png',
                            width: 38,
                          ),
                          const SizedBox(height:10),
                          const Text("80%"),
                          const SizedBox(height:10),
                          const Text("Anwar Gaming"),
                        ]
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        color: Colors.cyanAccent,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/anwar.png',
                            width: 38,
                          ),
                          const SizedBox(height:10),
                          const Text("60%"),
                          const SizedBox(height:10),
                          const Text("Chicken Gaming"),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        color: Colors.pinkAccent,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/anwar.png',
                            width: 38,
                          ),
                          const SizedBox(height:10),
                          const Text("90%"),
                          const SizedBox(height:10),
                          const Text("Bro Gaming"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ], 
          ),
        ),
      ),
    );
  }
}