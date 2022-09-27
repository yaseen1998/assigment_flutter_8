import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Log_in extends StatefulWidget {
  const Log_in({super.key});

  @override
  State<Log_in> createState() => _Log_inState();
}

class _Log_inState extends State<Log_in> {
  String Email = "";
  String Password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Log in page")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CircleAvatar(
              radius: 100,
              child: Image(image: AssetImage("images/2.png")),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    Email = value;
                  });
                },
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 1)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Please enter your email",
                    label: Text(
                      "Email",
                      style: TextStyle(fontSize: 25),
                    ),
                    prefixIcon: Icon(Icons.people)),
                maxLines: 1,
                maxLength: 20,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    Password = value;
                  });
                },
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 1)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Please enter your password",
                    label: Text(
                      "password",
                      style: TextStyle(fontSize: 25),
                    ),
                    prefixIcon: Icon(Icons.people)),
                maxLines: 1,
                maxLength: 20,
                textAlign: TextAlign.center,
                obscureText: true,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  
                  Email=='test'&&Password=='test'?showDialog(context: context,builder: (context) {
                    return AlertDialog(
                      title: Text("Log in successfully"),
                      content: Text("Welcome to our app"),
                      actions: [
                        ElevatedButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: Text("OK"))
                      ],
                    );
                  }):showDialog(context: context,builder: (context) {
                    return AlertDialog(
                      title: Text("Log in failed"),
                      content: Text("Please check your email and password"),
                      actions: [
                        ElevatedButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: Text("OK"))
                      ],
                    );
                  });
                },
                child: Text("log-in"))
          ],
        ),
      ),
    );
  }
}
