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
          ReclamationPage(),
        ]),
      ),
    );
  }
}

class ReclamationPage extends StatelessWidget {
  const ReclamationPage({super.key});

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
                top: size.height * 0.2,  // Adjusted from 0.3 to 0.2 to move it higher
                left: 0,
                right: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.all(0),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 1, color: Color(0xFF2C2C2C)),
                              borderRadius: BorderRadius.circular(size.width * 0.07),
                            ),
                            elevation: 5,
                          ),
                          onPressed: () {
                            // Handle button press
                          },
                          child: Container(
                            width: size.width * 0.33,
                            height: size.height * 0.15,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/Finance.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.01),
                        const Text(
                          'Finance',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 1.2,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.05),
                    Column(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.all(0),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 1, color: Color(0xFF2C2C2C)),
                              borderRadius: BorderRadius.circular(size.width * 0.07),
                            ),
                            elevation: 5,
                          ),
                          onPressed: () {
                            // Handle button press
                          },
                          child: Container(
                            width: size.width * 0.33,
                            height: size.height * 0.15,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/Commercial.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.01),
                        const Text(
                          'Service Commercial',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 1.2,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.05),
                    Column(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.all(0),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 1, color: Color(0xFF2C2C2C)),
                              borderRadius: BorderRadius.circular(size.width * 0.07),
                            ),
                            elevation: 5,
                          ),
                          onPressed: () {
                            // Handle button press
                            Navigator.pushNamed(context, '/produit_defectueuex');
                          },
                          child: Container(
                            width: size.width * 0.33,
                            height: size.height * 0.15,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/Piece defectueuex.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.01),
                        const Text(
                          'Produit Defectueux',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 1.2,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: size.height * 0.04,
                left: 0,
                right: 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Type de Reclamation',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.white,
                              padding: const EdgeInsets.all(0),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 1, color: Color(0xFF2C2C2C)),
                                borderRadius: BorderRadius.circular(size.width * 0.142 / 2),
                              ),
                              elevation: 5,
                            ),
                            onPressed: () {
                              // Handle button press
                            },
                            child: const Icon(
                              Icons.person,
                              size: 30,
                            ),
                          ),
                          SizedBox(width: size.width * 0.03),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.white,
                              padding: const EdgeInsets.all(0),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 1, color: Color(0xFF2C2C2C)),
                                borderRadius: BorderRadius.circular(size.width * 0.142 / 2),
                              ),
                              elevation: 5,
                            ),
                            onPressed: () {
                              // Handle button press
                              Navigator.pushNamed(context, '/home');
                            },
                            child: const Icon(
                              Icons.home,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
