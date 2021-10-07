import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        
        home: Scaffold(
          
          backgroundColor: Colors.grey.shade300,
          appBar: AppBar(
            backgroundColor: Colors.green.shade700,
            title: const Center(child: Text("Jawan Pakistan Login")),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Container(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                      width: 50,
                    ),
                    const CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('images/jawan pak.jpg'),
                    ),
                    const SizedBox(
                      height: 50,
                      width: 50,
                    ),
                    // ignore: sized_box_for_whitespace
                    Container(width: 200, child: TextFormField(initialValue: "Username",)),
          
                    const SizedBox(
                      height: 10,
                      width: 10,
                    ),
                    // ignore: sized_box_for_whitespace
                 Container(width: 200, child: TextFormField(initialValue: "Password",)),
          
                    const SizedBox(
                      height: 30,
                      width: 10,
                    ),
                    ElevatedButton(onPressed: (){}, child: const Text("login"))
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
