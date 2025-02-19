import 'package:flutter/material.dart';

class W2 extends StatelessWidget {
  const W2({super.key, required this.value});
  final double value;
  
  @override
  Widget build(BuildContext context) {



    double valuePrueba ;
    
    valuePrueba= double.parse(value.toStringAsFixed(1))- value.toInt();
    valuePrueba = valuePrueba<0?valuePrueba*-1: valuePrueba;
    print(valuePrueba);

    return Container(
      key: const Key('W2'),
      width: 200,
      height: 200,
      color: valuePrueba<=0.4?  Colors.blueGrey:   const Color.fromARGB(255, 12, 147, 214), // should be grey when the decimal is bellow 0.4
    );
  }


}

