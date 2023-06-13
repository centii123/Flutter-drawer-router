import 'dart:ui';

import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 94, 94, 94),
        titleTextStyle: TextStyle(fontSize: 20, color: Colors.white),
        foregroundColor: Colors.white,
        title: Center(
          child: Text("Bienvenidos al inicio"),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, "/");
              },
              icon: Icon(Icons.logout))
        ],
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 94, 94, 94),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    maxRadius: 200,
                    backgroundImage: AssetImage("assets/logo.jpg"),
                  ),
                  accountName: Text("Enrique Mera"),
                  accountEmail: Text("enriquemy2001@gmail.com"),
                ),
                ListTile(
                  iconColor: Colors.white,
                  textColor: Colors.white,
                    leading: Icon(Icons.home),
                    title: Text("Inicio"),
                    onTap: () {
                      Navigator.popAndPushNamed(context, "/home");
                    }),
                ListTile(
                  iconColor: Colors.white,
                  textColor: Colors.white,
                    leading: Icon(Icons.login),
                    title: Text("Login"),
                    onTap: () {
                      Navigator.popAndPushNamed(context, "/login");
                    }),
                ListTile(
                  iconColor: Colors.white,
                  textColor: Colors.white,
                    leading: Icon(Icons.app_registration),
                    title: Text("Register"),
                    onTap: () {
                      Navigator.popAndPushNamed(context, "/registro");
                    })
              ],
            )
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [Colors.black, Colors.purple])),
        padding: EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              maxRadius: 100,
              backgroundImage: AssetImage("assets/logo.jpg"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Inicio De Session",
              style: TextStyle(color: Colors.white, fontSize: 35),
            )
          ],
        ),
      ),
    );
  }
}
