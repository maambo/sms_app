import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController phoneNumber = TextEditingController();

  TextEditingController msg = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'Earnest SMS APP',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Icon(
                Icons.sms_rounded,
                size: 60,
              ),
              const SizedBox(
                height: 30,
              ),
              Card(
                elevation: 2,
                child: TextField(
                  controller: phoneNumber,
                  keyboardType: TextInputType.phone,
                  autofillHints: const [AutofillHints.telephoneNumber],
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.contact_phone),
                      onPressed: () {},
                    ),
                    labelText: 'Phone No',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 100, 96, 96),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Card(
                elevation: 2,
                child: TextField(
                  controller: msg,
                  keyboardType: TextInputType.multiline,
                  maxLines: 8,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Write SMS",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 100, 96, 96),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                height: 60,
                child: ElevatedButton.icon(
                  style: const ButtonStyle(
                    elevation: MaterialStatePropertyAll(4),
                    splashFactory: InkRipple.splashFactory,
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(vertical: 10, horizontal: 60)),
                    foregroundColor: MaterialStatePropertyAll(Colors.white),
                    textStyle: MaterialStatePropertyAll(
                      TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  onPressed: () {},
                  label: const Text('Send'),
                  icon: const Icon(Icons.send_rounded),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
