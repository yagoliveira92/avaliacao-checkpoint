import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Rodape extends StatelessWidget {
  const Rodape({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFF001A3F),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Parte verde do final
          Container(
            color: const Color(0xff8FFF24),
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Fique por dentro das novidades",
                  style: GoogleFonts.orbitron(
                    color: const Color(0xFF001A3F),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                Column(
                  // Estica os filhos para ocuparem todo o espaço
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 50,
                      // Para estilizar
                      decoration: BoxDecoration(
                        color: const Color(0xff8FFF24),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: const Color(0xFF001A3F), width: 1.5),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Seu email",
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF001A3F).withOpacity(0.6),
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Align(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF7F24A3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                          elevation: 0,
                        ),
                        child: Text(
                          "INSCREVER",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const Divider(color: Colors.white24, height: 1),

          // --- RESTANTE DO FOOTER (AZUL) ---
          Container(
            color: const Color(0xFF0A1C3F),
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/imagens/Logo UseDev Verde.png",
                        height: 40,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Hora de abraçar seu lado geek!",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.orbitron(
                          color: const Color(0xff8FFF24),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                
                const SizedBox(height: 30),
                const Divider(color: Colors.white24, height: 1),
                const SizedBox(height: 30),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Força as colunas a dividirem o espaço igualmente
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "FUNCIONAMENTO",
                            style: GoogleFonts.orbitron(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Text(
                            "Horário de atendimento:\nSeg a Sex: das 8h às 18h",
                            style: GoogleFonts.poppins(color: Colors.white70, fontSize: 13),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Email\ncontato@usedev.com.br",
                            style: GoogleFonts.poppins(color: Colors.white70, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "INSTITUCIONAL",
                            style: GoogleFonts.orbitron(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 15),
                          _buildRodapeLink("Quem somos"),
                          _buildRodapeLink("Prazos e Envios"),
                          _buildRodapeLink("Trocas e Devoluções"),
                          _buildRodapeLink("Promoções"),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "INFORMAÇÕES",
                            style: GoogleFonts.orbitron(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 15),
                          _buildRodapeLink("Termos de Uso"),
                          _buildRodapeLink("Política de Privacidade"),
                        ],
                      ),
                    ),
                  ],
                ),
                
                const SizedBox(height: 30),
                const Divider(color: Color(0xff8FFF24), height: 1),
                const SizedBox(height: 30),
                
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pagamento",
                            style: GoogleFonts.orbitron(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 15),
                          // Deixa os icones um do lado do outro
                          Wrap(
                            spacing: 15,
                            runSpacing: 10,
                            children: [
                              Image.asset("assets/imagens/ico-pix.png", width: 45),
                              Image.asset("assets/imagens/ico-cartao-visa.png", width: 45),
                              Image.asset("assets/imagens/ico-cartao-master.png", width: 45),
                              Image.asset("assets/imagens/ico-cartao-elo.png", width: 45),
                              Image.asset("assets/imagens/ico-cartao-diners.png", width: 45),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Siga a UseDev",
                            style: GoogleFonts.orbitron(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Wrap(
                            spacing: 15,
                            runSpacing: 10,
                            children: [
                              Image.asset("assets/imagens/Instragam.png", width: 35),
                              Image.asset("assets/imagens/Tiktok.png", width: 35),
                              Image.asset("assets/imagens/Whatsapp.png", width: 35),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
          
          // --- SEÇÃO FINAL (CINZA) ---
          Container(
            color: const Color(0xFFD9D9D9),
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Text(
                    "Desenvolvido por alura   •   ",
                    style: GoogleFonts.poppins(color: Colors.black54, fontSize: 13),
                  ),
                  Text(
                    "Desenvolvido por: Nicolas Monteiro / Sua Matrícula",
                    style: GoogleFonts.poppins(color: Colors.black54, fontSize: 13),
                  ),
                ],
              ),
          ),
        ],
      ),
    );
  }

// Função para reaproveitar a estilização
  Widget _buildRodapeLink(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        text,
        style: GoogleFonts.poppins(
            color: Colors.white70,
            fontSize: 13,
            decoration: TextDecoration.underline),
      ),
    );
  }
}