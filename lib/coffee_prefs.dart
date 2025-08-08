import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  // initial value for state
  int strength = 1;
  int sugars = 1;

  void increaseStrength() {
    // set state, trigger the build for rebuilding UI
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void increaseSugar() {
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Strength of Coffee: '),
            // Text('$strength'),
            for (int i = 0; i < strength; i++)
              Image.asset(
                'assets/img/coffee_bean.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            FilledButton(
                style: FilledButton.styleFrom(
                    backgroundColor: Colors.brown,
                    foregroundColor: Colors.white),
                onPressed: increaseStrength,
                child: const Text('+'))
          ],
        ),
        Row(
          children: [
            const Text('Sugars Count: '),
            // Text('$sugars'),
            if (sugars == 0) const Text('No sugars...'),
            for (int i = 0; i < sugars; i++)
              Image.asset(
                'assets/img/sugar_cube.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.brown),
                onPressed: increaseSugar,
                child: const Text('+'))
          ],
        )
      ],
    );
  }
}
