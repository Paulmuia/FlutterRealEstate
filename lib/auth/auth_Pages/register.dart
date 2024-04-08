import 'package:flutter/material.dart';
import 'package:mm/auth/Auth_controllers/auth_controller.dart';
import 'package:mm/auth/auth_Pages/welcome_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 270,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  color: Colors.green,
                ),
                child: const Center(
                    child: Text(
                  'Get your favourite house',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                )),
              ),
              Container(
                height: 600,
                width: double.maxFinite,
                margin: const EdgeInsets.only(top: 230, left: 10, right: 10),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Register',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.green,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                   
        
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        controller: usernameController,
                        decoration: InputDecoration(
                          hintText: ' Enter username',
                          hintStyle: const TextStyle(
                            color: Colors.black,
                          ),
                          labelText: 'Enter username',
                          prefixIcon: const Icon(Icons.person, color: Colors.green),
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
                      height: 10,
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
                          prefixIcon: const Icon(Icons.email, color: Colors.green),
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
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: ' Enter Password',
                          hintStyle: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w400),
                          labelText: 'Enter Password',
                          prefixIcon: const Icon(Icons.password, color: Colors.green),
                          suffixIcon: IconButton(
                            icon: Icon(
                              passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.pink,
                            ),
                            onPressed: () {
                              setState(() {
                                passwordVisible = !passwordVisible;
                              });
                            },
                          ),
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
                        AuthController.instance.register(
                    usernameController.text.trim(),
                    emailController.text.trim(),
                    passwordController.text.trim());
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 60),
                        height: 50,
                        width: double.maxFinite,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.green),
                        child: const Center(
                          child: Text(
                            'Register',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already a member.',
                          style: TextStyle(fontSize: 15),
                        ),
                        GestureDetector(
                          onTap: () {
                        print("...Go to login Screen");
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const WelcomePage(),
                          ),
                        );
                      },
                          child: const Text(
                            '    Login ',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.blue,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      height: 10,
                      thickness: 1,
                      color: Colors.green,
                      indent: 10,
                      endIndent: 10,
                    ),
                    const Text('Or continue with'),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      height: 60,
                      width: double.maxFinite,
                      //color: Colors.amber,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 10),
                              height: 70,
                              width: 150,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey, // Color of the shadow
                                    offset: Offset(
                                        0, 3), // Offset of the shadow (x, y)
                                    blurRadius: 6, // Amount of blur
                                    spreadRadius: 0, // Amount of spread
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'lib/assets/goo.png'),
                                          fit: BoxFit.cover)),
                                ),
                                const Text(
                                  'Google',
                                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                                )
                              ]),
                            ),
                            Container(
                              height: 70,
                              width: 160,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey, // Color of the shadow
                                    offset: Offset(
                                        0, 3), // Offset of the shadow (x, y)
                                    blurRadius: 6, // Amount of blur
                                    spreadRadius: 0, // Amount of spread
                                  ),
                                ],
                              ),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'lib/assets/fb.png'),
                                              fit: BoxFit.cover)),
                                    ),
                                    const Text(
                                      'Facebook',
                                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                                    )
                                  ]),
                            ),
                          ]),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
