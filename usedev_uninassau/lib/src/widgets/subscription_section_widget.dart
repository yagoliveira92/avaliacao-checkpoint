import 'package:flutter/material.dart';


class SubscriptionSectionWidget extends StatelessWidget {
  const SubscriptionSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Color(0xFF8FFF24),
    ),
        child: Column(
          spacing: 20,
          children: [
            Text(
              'Inscreva-se para ganhar descontos!',
              textAlign: .center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: .bold
              ),
            ),
            Text(
              'Cadastre seu email, receba novidades e descontos imperdíveis antes de todo mundo!',
              textAlign: .center,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 18,
              ),
            ),
            TextField(
              keyboardType: .emailAddress,
              decoration: InputDecoration(
                hintText: 'Digite seu melhor endereço de email',
                fillColor: Colors.transparent,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Color(0xFFDDDDDD)),
                ),
                ),
              ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF780BF7),
                padding: .symmetric(horizontal: 30, vertical: 25),
              ),
              child: Text(
                'Inscrever-se',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: .bold,
                ),
              ),
            ),
          ],
        ),
    );
  }
}