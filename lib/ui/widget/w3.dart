import 'package:flutter/material.dart';

class W3 extends StatelessWidget {
  const W3({super.key, required this.value, required this.suma, required this.resta});
  final double value;
  final VoidCallback suma;
  final VoidCallback resta;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            color: Theme.of(context).colorScheme.inversePrimary,
            child: Text(
               value.toStringAsFixed(1),
              key: const Key('W3Value'),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            color: Theme.of(context).colorScheme.inversePrimary,
            child: Column(
              children: [
                IconButton(
                    onPressed: () {
                      suma();
                    },
                    icon: const Icon(Icons.add),
                    key: const Key('W3Add')),
                IconButton(
                    onPressed: () {
                      resta();
                    },
                    icon: const Icon(Icons.remove),
                    key: const Key('W3Sub'))
              ],
            ),
          )
        ],
      ),
    );
    ;
  }
}
