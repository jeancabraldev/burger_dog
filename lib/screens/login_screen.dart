import 'package:burger_dog/screens/signup/signup_screen.dart';
import 'package:burger_dog/widgets/flatbutton.dart';
import 'package:burger_dog/widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Icon(
                      FontAwesomeIcons.hamburger,
                      color: Color(0xFF7540EE),
                      size: 32,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Burger Dog',
                      style: TextStyle(color: Color(0xFF7540EE), fontSize: 22),
                    ),
                  ],
                ),
                const SizedBox(height: 60),
                const Text(
                  'Seja bem-vindo',
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xFF25265E),
                  ),
                ),
                const SizedBox(height: 22),
                const Text(
                  'Você pode usar sua impressão digital para conceder acesso ao aplicativo.',
                  style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    color: Color(0xFF787993),
                  ),
                ),
                const SizedBox(
                  height: 55,
                ),
                const TextFormFielsWidget(
                  hintText: 'E-mail',
                ),
                const SizedBox(height: 10),
                const TextFormFielsWidget(
                  hintText: 'Senha',
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlatButtonWidget(
                      onPressed: () {},
                      colorButton: const Color(0xFF7540EE).withOpacity(.2),
                      text: 'Login',
                      colorText: const Color(0xFF7540EE),
                    ),
                    const Text(
                      'Esqueceu a senha?',
                      style: TextStyle(
                        color: Color(0xFF7540EE),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Ainda sem conta? ',
                      style: TextStyle(
                        color: Color(0xFF7540EE),
                        fontSize: 16,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => SignupScreen(),
                        ));
                      },
                      child: const Text(
                        'Crie uma',
                        style: TextStyle(
                          color: Color(0xFFFF7052),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
