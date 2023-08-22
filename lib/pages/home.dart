// ignore_for_file: prefer_is_empty

import 'package:codeapp/pages/home_screen.dart';
import 'package:codeapp/pages/register.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

TextEditingController _correo = TextEditingController();
TextEditingController _contrasena = TextEditingController();

final _claveFormulario = GlobalKey<FormState>();

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Material(
      // ignore: sized_box_for_whitespace
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.4,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.4,
                decoration: const BoxDecoration(
                  color: Color(0XFF674AEF),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(60)),
                ),
                child: Center(
                    child: Image.asset(
                  "images/img1.png",
                  scale: 0.1,
                )),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.66,
              decoration: const BoxDecoration(
                color: Color(0XFF674AEF),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.666,
              padding: const EdgeInsets.only(top: 30, bottom: 30),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70),
                ),
              ),
              child: Column(
                children: [
                  const Text(
                    "Iniciar Sesión",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      wordSpacing: 2,
                    ),
                  ),
                  const SizedBox(height: 1),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Form(
                      key: _claveFormulario,
                      child: Column(
                        children: <Widget>[_formCorreo(), _formContrasena()],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text('No tienes una cuenta?'),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterPage(),
                          ));
                    },
                    child: const Text('Registrate'),
                  ),
                  const SizedBox(height: 20),
                  Material(
                    color: const Color(0XFF674AEF),
                    borderRadius: BorderRadius.circular(10),
                    child: TextButton(
                      onPressed: () {
                        if (_claveFormulario.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ));
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 80),
                        child: const Text(
                          "Iniciar",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Widget _formCorreo() {
    return Form(
      child: Column(children: [
        TextFormField(
            keyboardType: TextInputType.text,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Escribe tu correo';
              }
              if (value.length < 1) {
                // ignore: avoid_print
                return 'caracteres son cortos';
              }
              return null;
            },
            controller: _correo,
            decoration: const InputDecoration(
              hintText: 'Ingresa tu correo',
              labelText: "Correo electronico",
            )),
      ]),
    );
  }

  Widget _formContrasena() {
    return Form(
      child: Column(children: [
        TextFormField(
            keyboardType: TextInputType.text,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Escribe tu contraseña';
              }
              if (value.length < 1) {
                // ignore: avoid_print
                print('La caracteres son cortos');
              }
              return null;
            },
            controller: _contrasena,
            decoration: const InputDecoration(
              hintText: 'Ingresa tu contraseña',
              labelText: "Contraseña",
            )),
      ]),
    );
  }
}
