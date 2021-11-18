
import 'package:amjad_app/home.dart';
import 'package:flutter/material.dart';

class log extends StatefulWidget {
  const log({Key? key}) : super(key: key);

  @override
  _logState createState() => _logState();
}

class _logState extends State<log> {

TextEditingController inputPW = TextEditingController();
  var pw = "";

  login() {
    setState(() {
      if (pw == "123456") {
        Navigator.push(context,
                      MaterialPageRoute(builder: (context) => home()));
      } else {
        showAlertDialog(context);
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Login", style: TextStyle(color: Colors.black)),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 200,
                width: 50,
              ),
              Container(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
                width: 10,
              ),
              Container(
                width: 200,
                child: TextFormField(
                  controller: inputPW,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                  onChanged: (value) {
                    pw = value;
                  },
                ),
              ),
              const SizedBox(
                height: 30,
                width: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    login();


    //                 if (pw == "123456") {
    //                   Navigator.push(context,
    //                       MaterialPageRoute(builder: (context) => home()));
    //                 } else {

                      
    //                   AlertDialog(
    // title: Text("Wrong Password"),
    // content: Text("Please try again"));
    //                 }
                  },
                  child: const Text("login")),

                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not have an account?"),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Register.",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w900),
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


showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Wrong Password"),
    content: Text("Please try again"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
