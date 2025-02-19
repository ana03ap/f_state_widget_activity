import 'package:flutter/material.dart';

import '../widget/w1.dart';
import '../widget/w2.dart';
import '../widget/w3.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double value = 0;
  // para obtener un valor con un solo decimal, correctamente redondeado
  // y asignarlo a un string, se puede usar:
  // double.parse(_value.toStringAsFixed(1));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {
                    
                    setState(() {
                      value = 0;
                    });
                  },
                  icon: const Icon(Icons.refresh),
                  key: const Key('Refresh')),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[W1(value: value, suma : suma, resta: resta), W2(value: value), W3(value: value, suma : suma2, resta: resta2)],
            ),
          ),
        ],
      )),
    );
  }



  void suma() {

  setState(() {
    value = value+1;
  });
}

 void suma2() {
  setState(() {
    value +=0.1;
  });
}


 void resta() {
  setState(() {
    value -=1;
  });
}


 void resta2() {
  setState(() {
    value -=0.1;
  });
}




}

