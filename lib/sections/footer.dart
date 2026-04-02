import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: const Color(0xFF8FFF24),
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            children: [
              const Text(
                "Inscreva-se para ganhar\ndescontos!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Orbitron',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0D0221),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "Cadastre seu email, receba novidades\ne descontos imperdíveis antes de todo mundo!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  color: Color(0xFF0D0221),
                ),
              ),
              const SizedBox(height: 25),
              TextField(
                decoration: InputDecoration(
                  hintText: "Digite seu melhor endereço de email",
                  hintStyle: const TextStyle(fontSize: 13, color: Colors.black54),
                  filled: true,
                  fillColor: Colors.transparent,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Color(0xFF0D0221), width: 1.5),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF780BF7),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                ),
                child: const Text("Inscrever", style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 18)),
              ),
            ],
          ),
        )
      ],
    );
  }
}