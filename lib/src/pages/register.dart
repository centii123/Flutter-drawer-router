import 'package:flutter/material.dart';

class RegistroPages extends StatelessWidget {
  const RegistroPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 120),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  maxRadius: 110,
                  backgroundImage: AssetImage("assets/logo.jpg"),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Registro",
                  style: TextStyle(color: Colors.white, fontSize: 55),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Imputs(
                  nombre: "Nombres",
                  textoEstado: false,
                  icono: Icons.person,
                  tipoTeclado: TextInputType.text,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Imputs(
                  nombre: "Apellidos",
                  textoEstado: false,
                  icono: Icons.verified,
                  tipoTeclado: TextInputType.text,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Imputs(
                  nombre: "Email",
                  textoEstado: false,
                  icono: Icons.email,
                  tipoTeclado: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Imputs(
                  nombre: "Celular",
                  textoEstado: false,
                  icono: Icons.numbers,
                  tipoTeclado: TextInputType.phone,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Imputs(
                  nombre: "Edad",
                  textoEstado: false,
                  icono: Icons.format_list_numbered,
                  tipoTeclado: TextInputType.number,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Imputs(
                  nombre: "Contraseña",
                  textoEstado: true,
                  icono: Icons.password,
                  tipoTeclado: TextInputType.visiblePassword,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Imputs(
                  nombre: "Repetir Contraseña",
                  textoEstado: true,
                  icono: Icons.password_sharp,
                  tipoTeclado: TextInputType.visiblePassword,
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
                                horizontal: 50, vertical: 15))),
                    onPressed: () {
                      Navigator.popAndPushNamed(context, "/");
                    },
                    child: const Text(
                      "ATRAS",
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
                      Navigator.popAndPushNamed(context, "/login");
                    },
                    child: const Text(
                      "SIGUIENTE",
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

class Imputs extends StatelessWidget {
  final TextInputType tipoTeclado;
  final IconData icono;
  final String nombre;
  final bool textoEstado;
  const Imputs(
      {Key? key,
      required this.nombre,
      required this.textoEstado,
      required this.icono,
      required this.tipoTeclado})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: TextFormField(
          keyboardType: tipoTeclado,
          obscureText: textoEstado,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
              suffixIcon: Icon(icono, color: Colors.lightBlue),
              focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide(color: Colors.blueGrey)),
              enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide(color: Colors.lightBlue)),
              labelStyle: const TextStyle(color: Colors.lightBlue),
              labelText: nombre),
        ));
  }
}