import 'package:calculator/utils/calculator_functions.dart';
import 'package:flutter/material.dart';
import 'package:calculator/utils/margins/y_margin.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final Calculatorfunctions calculatorfunction = Calculatorfunctions();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              calculatorfunction.expression,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 50,
              ),
            ),
            const Ymargin(value: 20),
            Text(
              calculatorfunction.result,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 35,
              ),
            ),
            const Ymargin(value: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                  child: Calculatorbutton(
                    buttontext: 'del',
                    buttoncolor: Colors.white12,
                    textcolor: const Color.fromARGB(255, 230, 118, 77),
                    onpressed: () {
                      setState(() {
                        calculatorfunction.performbuttonaction('del');
                      });
                    },
                  ),
                ),
              ],
            ),
            const Ymargin(value: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Calculatorbutton(
                  buttontext: 'C',
                  buttoncolor: Colors.white12,
                  textcolor: Colors.red,
                  onpressed: () {
                    setState(() {
                      calculatorfunction.performbuttonaction('C');
                    });
                  },
                ),
                Calculatorbutton(
                  buttontext: '()',
                  buttoncolor: Colors.white12,
                  textcolor: const Color.fromARGB(255, 230, 118, 77),
                  onpressed: () {},
                ),
                Calculatorbutton(
                  buttontext: '%',
                  buttoncolor: Colors.white12,
                  textcolor: const Color.fromARGB(255, 230, 118, 77),
                  onpressed: () {
                    setState(() {
                      calculatorfunction.performbuttonaction('%');
                    });
                  },
                ),
                Calculatorbutton(
                  buttontext: '/',
                  buttoncolor: Colors.white12,
                  textcolor: const Color.fromARGB(255, 230, 118, 77),
                  onpressed: () {
                    setState(() {
                      calculatorfunction.performbuttonaction('/');
                    });
                  },
                ),
              ],
            ),
            const Ymargin(value: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Calculatorbutton(
                  buttontext: '7',
                  buttoncolor: Colors.white12,
                  textcolor: Colors.blue,
                  onpressed: () {
                    setState(() {
                      calculatorfunction.performbuttonaction('7');
                    });
                  },
                ),
                Calculatorbutton(
                  buttontext: '8',
                  buttoncolor: Colors.white12,
                  textcolor: Colors.blue,
                  onpressed: () {
                    setState(() {
                      calculatorfunction.performbuttonaction('8');
                    });
                  },
                ),
                Calculatorbutton(
                  buttontext: '9',
                  buttoncolor: Colors.white12,
                  textcolor: Colors.blue,
                  onpressed: () {
                    setState(() {
                      calculatorfunction.performbuttonaction('9');
                    });
                  },
                ),
                Calculatorbutton(
                  buttontext: 'X',
                  buttoncolor: Colors.white12,
                  textcolor: const Color.fromARGB(255, 230, 118, 77),
                  onpressed: () {
                    setState(() {
                      calculatorfunction.performbuttonaction('*');
                    });
                  },
                ),
              ],
            ),
            const Ymargin(value: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Calculatorbutton(
                  buttontext: '4',
                  buttoncolor: Colors.white12,
                  textcolor: Colors.blue,
                  onpressed: () {
                    setState(() {
                      calculatorfunction.performbuttonaction('4');
                    });
                  },
                ),
                Calculatorbutton(
                  buttontext: '5',
                  buttoncolor: Colors.white12,
                  textcolor: Colors.blue,
                  onpressed: () {
                    setState(() {
                      calculatorfunction.performbuttonaction('5');
                    });
                  },
                ),
                Calculatorbutton(
                  buttontext: '6',
                  buttoncolor: Colors.white12,
                  textcolor: Colors.blue,
                  onpressed: () {
                    setState(() {
                      calculatorfunction.performbuttonaction('6');
                    });
                  },
                ),
                Calculatorbutton(
                  buttontext: '-',
                  buttoncolor: Colors.white12,
                  textcolor: const Color.fromARGB(255, 230, 118, 77),
                  onpressed: () {
                    setState(() {
                      calculatorfunction.performbuttonaction('-');
                    });
                  },
                ),
              ],
            ),
            const Ymargin(value: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Calculatorbutton(
                  buttontext: '1',
                  buttoncolor: Colors.white12,
                  textcolor: Colors.blue,
                  onpressed: () {
                    setState(() {
                      calculatorfunction.performbuttonaction('1');
                    });
                  },
                ),
                Calculatorbutton(
                  buttontext: '2',
                  buttoncolor: Colors.white12,
                  textcolor: Colors.blue,
                  onpressed: () {
                    setState(() {
                      calculatorfunction.performbuttonaction('2');
                    });
                  },
                ),
                Calculatorbutton(
                  buttontext: '3',
                  buttoncolor: Colors.white12,
                  textcolor: Colors.blue,
                  onpressed: () {
                    setState(() {
                      calculatorfunction.performbuttonaction('3');
                    });
                  },
                ),
                Calculatorbutton(
                  buttontext: '+',
                  buttoncolor: Colors.white12,
                  textcolor: Colors.blue,
                  onpressed: () {
                    setState(() {
                      calculatorfunction.performbuttonaction('+');
                    });
                  },
                ),
              ],
            ),
            const Ymargin(value: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Calculatorbutton(
                  buttontext: '+/-',
                  buttoncolor: Colors.white12,
                  textcolor: Colors.blue,
                  onpressed: () {},
                ),
                Calculatorbutton(
                  buttontext: '0',
                  buttoncolor: Colors.white12,
                  textcolor: Colors.blue,
                  onpressed: () {
                    setState(() {
                      calculatorfunction.performbuttonaction('0');
                    });
                  },
                ),
                Calculatorbutton(
                  buttontext: '.',
                  buttoncolor: Colors.white12,
                  textcolor: Colors.blue,
                  onpressed: () {
                    setState(() {
                      calculatorfunction.performbuttonaction('.');
                    });
                  },
                ),
                Calculatorbutton(
                  buttontext: '=',
                  buttoncolor: const Color.fromARGB(255, 230, 118, 77),
                  textcolor: Colors.black,
                  onpressed: () {
                    setState(() {
                      calculatorfunction.performbuttonaction('=');
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Calculatorbutton extends StatelessWidget {
  const Calculatorbutton(
      {super.key,
      required this.buttontext,
      required this.buttoncolor,
      required this.textcolor,
      required this.onpressed});

  final String buttontext;
  final Color textcolor;
  final Color buttoncolor;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.height * 0.08,
      height: size.height * 0.08,
      child: TextButton(
        onPressed: onpressed,
        style: TextButton.styleFrom(
          backgroundColor: buttoncolor,
          shape: const CircleBorder(),
        ),
        child: Text(
          buttontext,
          style: TextStyle(color: textcolor, fontSize: 30),
        ),
      ),
    );
  }
}
//ui build
// safearea -->> column -->> text -->> text -->> row -->> custom icon