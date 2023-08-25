import 'package:flutter/material.dart';
import 'package:project_2/pages/profile.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key, required this.oldEmail});
  final String oldEmail;
  @override
  State<LogIn> createState() => _ProfileState();
}

class _ProfileState extends State<LogIn> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final h1 = 150.0;
  final circ = 8.0;
  @override
  void initState() {
    super.initState();
    emailController.text = widget.oldEmail;
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSs3PnbQqflCFbajzHLdQowsXnhbadu550DXA&usqp=CAU',
              width: 150,
              height: 150,
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(children: [
          const SizedBox(height: 30),
          const Icon(Icons.lock_open_outlined, size: 120, color: Colors.black),
          const Text('Login', style: TextStyle(color: Colors.black, fontSize: 40)),
          const SizedBox(height: 20),
          Text(emailController.text),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20))),
            width: 300,
            child: Padding(
              padding: const EdgeInsets.only(left: 18),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(border: InputBorder.none),
                onChanged: (sometext) {
                  setState(() {});
                },
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20))),
            width: 300,
            child: Padding(
              padding: const EdgeInsets.only(left: 18),
              child: TextField(
                controller: passwordController,
                decoration: const InputDecoration(border: InputBorder.none),
                obscureText: true,
                onChanged: (sometext) {
                  setState(() {});
                },
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              final email = emailController.text;
              final password = passwordController.text;

              if (email == 'Rahaf@gmail.com' && password == '123') {
                showDialog(
                  context: context,
                  builder: (__) {
                    return Dialog(
                      backgroundColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              'Welcome',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                final navigator = Navigator.of(context);
                                navigator.push(MaterialPageRoute(builder: (context) => const Profile()));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff74ac2c),
                                shape: const StadiumBorder(),
                                minimumSize: const Size(50, 40),
                              ),
                              child: const Text('Okay'),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              } else {
                (showDialog(
                  context: context,
                  builder: (__) {
                    return Dialog(
                      backgroundColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              'Wrong email or password',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff74ac2c),
                                shape: const StadiumBorder(),
                                minimumSize: const Size(50, 40),
                              ),
                              child: const Text('Okay'),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ));
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: const StadiumBorder(),
              minimumSize: const Size(300, 55),
            ),
            child: const Text('Log in', style: TextStyle(color: Colors.black, fontSize: 20)),
          ),
        ]),
      ),
      backgroundColor: const Color(0xFFF3F1EB),
    );
  }
}
