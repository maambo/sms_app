import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Earnest SMS APP',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                width: double.infinity,
                child: Card(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.contact_phone_outlined),
                              labelText: 'Phone No',
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 100, 96, 96))),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        )
                      ]),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const TextField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 8,
                        decoration: InputDecoration(
                            hintText: "Wright SMS",
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Color.fromARGB(255, 100, 96, 96)))),
                      ),
                      ElevatedButton(onPressed: () {}, child: Text("Send SMS"))
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
