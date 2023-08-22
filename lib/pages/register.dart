import 'package:codeapp/pages/home_screen.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //final _claveFormulario = GlobalKey<FormState>();
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
                height: MediaQuery.of(context).size.height / 4.4,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4.4,
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
              height: MediaQuery.of(context).size.height / 1.29,
              decoration: const BoxDecoration(
                color: Color(0XFF674AEF),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.29,
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
                    "Registrate",
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
                    child: ListView(shrinkWrap: true, children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                            // key: _claveFormulario,
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Escribe tu nombre';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              hintText: 'Ingresa tu nombre',
                              labelText: "Nombre",
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                            // key: _claveFormulario,
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Escribe tu correo';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              hintText: 'Ingresa tu correo',
                              labelText: "Correo electronico",
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                            // key: _claveFormulario,
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Escribe tu contraseña';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              hintText: 'Ingresa tu contraseña',
                              labelText: "Contraseña",
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                            //  key: _claveFormulario,
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Escribe tu contraseña';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              hintText: 'Contraseña',
                              labelText: "Confirmar Contraseña",
                            )),
                      ),
                    ]),
                  ),
                  const SizedBox(height: 40),
                  Material(
                    color: const Color(0XFF674AEF),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ));
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
}
