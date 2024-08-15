import 'package:flutter/material.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: const [
          HomePage(),
        ]),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          width: size.width,
          height: size.height,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: size.width,
                  height: size.height,
                  decoration: const BoxDecoration(color: Color(0xFFD7E6EC)),
                ),
              ),
              Positioned(
                left: size.width * 0.09,
                top: size.height * 0.04,
                child: SizedBox(
                  width: size.width * 0.14,
                  height: size.width * 0.14,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: size.width * 0.14,
                          height: size.width * 0.14,
                          decoration: const ShapeDecoration(
                            color: Colors.white,
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: size.width * 0.03,
                        top: size.width * 0.03,
                        child: Icon(
                          Icons.person,
                          size: size.width * 0.085,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: size.width * 0.11,
                top: size.height * 0.29,
                child: Column(
                  children: [
                    SizedBox(
                      width: size.width * 0.29,
                      height: size.height * 0.13,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 1, color: Color(0xFF2C2C2C)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          elevation: 5,
                        ),
                        onPressed: () {
                          // Handle button press
                          Navigator.pushNamed(context, '/reclamation');
                        },
                        child: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.5),
                            BlendMode.srcATop,
                          ),
                          child: Container(
                            width: size.width * 0.21,
                            height: size.width * 0.21,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/Reclamation.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Reclamation',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: size.width * 0.55,
                top: size.height * 0.29,
                child: Column(
                  children: [
                    SizedBox(
                      width: size.width * 0.29,
                      height: size.height * 0.13,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 1, color: Color(0xFF2C2C2C)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          elevation: 5,
                        ),
                        onPressed: () {
                          // Handle button press
                        },
                        child: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.5),
                            BlendMode.srcATop,
                          ),
                          child: Container(
                            width: size.width * 0.21,
                            height: size.width * 0.21,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/recommandation.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Recommandation',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: size.width * 0.25,
                top: size.height * 0.57,
                child: Column(
                  children: [
                    SizedBox(
                      width: size.width * 0.29,
                      height: size.height * 0.13,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 1, color: Color(0xFF2C2C2C)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          elevation: 5,
                        ),
                        onPressed: () {
                          // Handle button press
                        },
                        child: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.4),
                            BlendMode.srcATop,
                          ),
                          child: Container(
                            width: size.width * 0.21,
                            height: size.width * 0.21,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/Assistance.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Assistance Technique',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
