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
        brightness: Brightness.dark,
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: const Color(0xFF121A29),
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
            final cardWidth = math.min(constraints.maxWidth - 40, 514.0);
            final cardHeight = math.min(constraints.maxHeight - 16, 840.0);
            final photoSize = math.min(cardWidth * 0.68, cardHeight * 0.43);

            return Center(
              child: Container(
                width: cardWidth,
                height: cardHeight,
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: cardHeight < 640 ? 22 : 30,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(38),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF1C263A), Color(0xFF192337)],
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 26,
                      offset: Offset(0, 16),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Column(
                      children: [
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'UNIVERSITAS SURYAKENCANA',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFF5F6F8),
                              fontSize: 29,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 0.2,
                            ),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'FAKULTAS TEKNIK',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFA3AFBF),
                            fontSize: 22,
                            letterSpacing: 0.6,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: photoSize,
                      height: photoSize,
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFB9C3CE),
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
                            color: Colors.white,
                            fontSize: 36,
                            height: 1.12,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 0.5,
                          ),
                        ),
                        SizedBox(height: 12),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'TEKNIK INFORMATIKA',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF63899E),
                              fontSize: 25,
                              letterSpacing: 0.7,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFF354A61),
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: const Text(
                        "IF D '24",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5,
                        ),
                      ),
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
