import 'package:flutter/material.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  maxRadius: 100,
                  backgroundImage: AssetImage("assets/logo.jpg"),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "BIENVENIDOS",
                  style: TextStyle(color: Colors.white, fontSize: 55),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0))),
                        backgroundColor:
                            const MaterialStatePropertyAll(Colors.blue),
                        padding: const MaterialStatePropertyAll(
                            EdgeInsetsDirectional.symmetric(
                                horizontal: 70, vertical: 15))),
                    onPressed: () {
                      Navigator.popAndPushNamed(context, "/login");
                    },
                    child: const Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.white),
                    )),
                    ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0))),
                        backgroundColor:
                            const MaterialStatePropertyAll(Colors.blue),
                        padding: const MaterialStatePropertyAll(
                            EdgeInsetsDirectional.symmetric(
                                horizontal: 50, vertical: 15))),
                    onPressed: () {
                      Navigator.popAndPushNamed(context, "/registro");
                    },
                    child: const Text(
                      "REGISTRARSE",
                      style: TextStyle(color: Colors.white),
                    ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

