import 'package:burger_dog/screens/login_screen.dart';
import 'package:burger_dog/widgets/flatbutton.dart';
import 'package:burger_dog/widgets/textformfield.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: const Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Color(0xFFFF7052),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Sign up',
                    style: TextStyle(color: Color(0xFF25265E), fontSize: 24),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Crie uma conta para usar o Burger Dog sem limites!.',
                    style: TextStyle(
                      color: Color(0xFF787993),
                    ),
                  ),
                  const SizedBox(height: 45),
                  const TextFormFielsWidget(
                    hintText: 'E-mail',
                  ),
                  const SizedBox(height: 10),
                  const TextFormFielsWidget(
                    hintText: 'Senha',
                  ),
                  const SizedBox(height: 10),
                  const TextFormFielsWidget(
                    hintText: 'Repita Senha',
                  ),
                  const SizedBox(height: 40),
                  FlatButtonWidget(
                    onPressed: () {},
                    colorButton: const Color(0xFFFF7052).withOpacity(.2),
                    text: 'Sign up',
                    colorText: const Color(0xFFFF7052),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Já tenho uma conta. ',
                        style: TextStyle(
                          color: Color(0xFF787993),
                          fontSize: 16,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => LoginScreen(),
                          ));
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Color(0xFF7540EE),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
