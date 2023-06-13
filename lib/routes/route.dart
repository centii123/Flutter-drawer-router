import 'package:rutas/src/pages/login.dart';
import 'package:rutas/src/pages/HomeScream.dart';
import 'package:rutas/src/pages/Inicio.dart';

import 'package:rutas/src/pages/register.dart';

class Rutas {
  final rutas={
        "/":(context) => Inicio(),
        "/login":(context)=>loginPages(),
        "/registro":(context)=>RegistroPages(),
        "/home":(context)=>HomePages()
};
}
