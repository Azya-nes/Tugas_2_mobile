import 'dart:math' as math;

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: const Color(0xFFF2F3F1),
        useMaterial3: true,
      ),
      home: const ProfileCardPage(),
    );
  }
}

class ProfileCardPage extends StatelessWidget {
  const ProfileCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final cardWidth = math.min(constraints.maxWidth - 32, 460.0);
            final cardHeight = math.min(constraints.maxHeight - 24, 780.0);
            final photoSize = math.min(
              math.min(cardWidth * 0.55, 200.0),
              cardHeight * 0.31,
            );

            return Center(
              child: Container(
                width: cardWidth,
                height: cardHeight,
                padding: const EdgeInsets.symmetric(
                  horizontal: 28,
                  vertical: 28,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x14000000),
                      blurRadius: 18,
                      offset: Offset(0, 6),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Column(
                      children: [
                        Text(
                          'UNIVERSITAS SURYAKENCANA',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF303A38),
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'FAKULTAS TEKNIK',
                          style: TextStyle(
                            color: Color(0xFF78817E),
                            fontSize: 13,
                            letterSpacing: 0.7,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: photoSize,
                      height: photoSize,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xFFE2E5E2),
                          width: 3,
                        ),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/profile.png',
                          fit: BoxFit.cover,
                          alignment: const Alignment(0, 0.42),
                          semanticLabel: 'Foto profil di pantai saat senja',
                        ),
                      ),
                    ),
                    const Column(
                      children: [
                        Text(
                          'MUHAMMAD\nAZYAN FIRDAUS',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF252D2B),
                            fontSize: 29,
                            height: 1.12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'TEKNIK INFORMATIKA',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF68736F),
                            fontSize: 14,
                            letterSpacing: 0.8,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 7,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF0F2EF),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        "IF D '24",
                        style: TextStyle(
                          color: Color(0xFF47534E),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const Row(
                      children: [
                        Expanded(
                          child: _ProfileDetail(
                            icon: Icons.location_on_outlined,
                            label: 'Cianjur',
                          ),
                        ),
                        Expanded(
                          child: _ProfileDetail(
                            icon: Icons.camera_alt_outlined,
                            label: '@arness____',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _ProfileDetail extends StatelessWidget {
  const _ProfileDetail({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 17, color: const Color(0xFF77827D)),
        const SizedBox(width: 6),
        Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              label,
              style: const TextStyle(
                color: Color(0xFF424C48),
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
