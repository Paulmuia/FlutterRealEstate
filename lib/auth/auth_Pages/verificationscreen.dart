import 'package:flutter/material.dart';
import 'package:mm/auth/Auth_controllers/auth_controller.dart';


class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final TextEditingController emailController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    

   
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(children: [
            Container(
              height: 270,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  color: Colors.green),
              child: const Center(
                  child: Text(
                'Reset password',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              )),
            ),
            Container(
              height: 400,
              width: double.maxFinite,
              margin: const EdgeInsets.only(top: 230, left: 10, right: 10),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    'Enter your email to reset password',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
              Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: ' Enter email',
                          hintStyle: const TextStyle(
                            color: Colors.black,
                          ),
                          labelText: 'Enter email',
                          prefixIcon:
                              const Icon(Icons.email, color: Colors.green),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                width: 1.0,
                                color: Color.fromARGB(255, 2, 35, 63),
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                width: 1.0,
                                color: Color.fromARGB(255, 2, 35, 63),
                              )),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      AuthController.instance.resetPassword(emailController.text.trim());
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 50),
                      height: 50,
                      width: double.maxFinite,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.green,
                      ),
                      child: const Center(
                        child: Text(
                          'Reset password',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ]),
        ]),
      ),
    );
  }
}
