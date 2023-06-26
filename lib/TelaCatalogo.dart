import 'package:PlantIFP2/TelaTutorial.dart';
import 'package:PlantIFP2/widgets/card.dart';
import 'package:flutter/material.dart';
import 'scanner.dart';
import 'TelaInfoPlantas.dart';

class TelaCatalogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner:false;
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double contentHeight = screenHeight - 78;

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;
          double screenHeight = constraints.maxHeight;
          double contentHeight = screenHeight - 78;
          return Stack(
            children: [
              Container(
                color: Colors.white,
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  width: screenWidth,
                  height: 219,
                  decoration: BoxDecoration(
                    color: Color(0xFF459473),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 42,
                left: 33,
                child: Text(
                  'PlantIFP2',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 95,
                left: 33,
                width: 261,
                height: 72,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Explore ',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          color: Colors.white,
                          fontFamily: 'Inter',
                        ),
                      ),
                      TextSpan(
                        text: 'e ',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Inter',
                        ),
                      ),
                      TextSpan(
                        text: 'conheça\n',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          color: Colors.white,
                          fontFamily: 'Inter',
                        ),
                      ),
                      TextSpan(
                        text: 'espécies de plantas\nno IFPI Campus Pedro II.',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Positioned(
                top: 160,
                left: 33,
                width: 199,
                height: 42,
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  elevation: 4,
                  shadowColor: Color.fromRGBO(0, 0, 0, 0.25),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TelaTutorial(),
                        ),
                      );
                    },
                    child: Center(
                      child: Text(
                        'Como começar?',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF459473),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 226,
                left: 20,
                right: 20,
                bottom: 55,
                child: Container(
                  color: Colors.white,
                  child: ListView(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 2),
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 00, bottom: 10),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Plantas:',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF459473),
                          ),
                        ),
                      ),
                      Container(
                        height: contentHeight * 0.35,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TelaPlanta(img: 'images/plants/nim.jpg', nomePopular: 'Nim', nomeCientifico: 'nomeCientifico', descricao: 'descricao', periculosidade: 'periculosidade'),
                                  ),
                                );
                              },
                              child: CardWidget(img: 'images/plants/nim.jpg', nomePopular: 'Nim')
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TelaPlanta(img: 'images/plants/cannabis.jpg', nomePopular: 'Maconha', nomeCientifico: 'Cannabis', descricao: 'descricao', periculosidade: 'periculosidade'),
                                  ),
                                );
                              },
                              child: CardWidget(img: 'images/plants/cannabis.jpg', nomePopular: 'Maconha')
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: contentHeight * 0.35,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFF459473),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        blurRadius: 4,
                        offset: Offset(4, 0),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 179, 5, 5),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                            size: 20,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => QRCodePage(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
