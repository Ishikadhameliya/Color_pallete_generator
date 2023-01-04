import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorPalette(),
    ),
  );
}

class ColorPalette extends StatefulWidget {
  const ColorPalette({Key? key}) : super(key: key);

  @override
  State<ColorPalette> createState() => _ColorPaletteState();
}

class _ColorPaletteState extends State<ColorPalette> {
  List colors = [
    Colors.redAccent.shade100,
    Colors.greenAccent,
    Colors.blue.shade600,
    Colors.purpleAccent.shade100,
    Colors.limeAccent.shade100,
    Colors.lime.shade600,
  ];
  Random random = Random();

  int index1 = 0;
  int index2 = 0;
  int index3 = 0;
  int index4 = 0;
  int index5 = 0;
  int index6 = 0;

  void changeIndex() {
    setState(() => index1 = random.nextInt(6));
    setState(() => index2 = random.nextInt(6));
    setState(() => index3 = random.nextInt(6));
    setState(() => index4 = random.nextInt(6));
    setState(() => index5 = random.nextInt(6));
    setState(() => index6 = random.nextInt(6));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(
              height: 45,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "Color Palette\n   Generator",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff3bb3f9),
                ),
              ),
            ),
            const SizedBox(
              height: 105,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.height * 0.6,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.height * 0.2 / 3,
                    decoration: BoxDecoration(
                      color: colors[index1],
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(15),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.height * 0.2 / 3,
                    color: colors[index2],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.height * 0.2 / 3,
                    color: colors[index3],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.height * 0.2 / 3,
                    color: colors[index4],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.height * 0.2 / 3,
                    color: colors[index5],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.height * 0.2 / 3,
                    decoration: BoxDecoration(
                      color: colors[index6],
                      borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: (() {
                setState(() {
                  changeIndex();
                });
              }),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.2 / 3,
                width: MediaQuery.of(context).size.width * .5,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffd3bb3f9),
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Text(
                    "Generate",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffd3bb3f9),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
