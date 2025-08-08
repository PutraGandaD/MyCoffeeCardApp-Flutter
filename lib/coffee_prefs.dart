import 'package:diceapp/style/styled_body_text.dart';
import 'package:diceapp/style/styled_button.dart';
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
            const StyledBodyText('Strength  '),
            // Text('$strength'),
            for (int i = 0; i < strength; i++)
              Image.asset(
                'assets/img/coffee_bean.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            StyledButton(onPressed: increaseStrength, child: const Text('+'))
          ],
        ),
        Row(
          children: [
            const StyledBodyText('Sugars  '),
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
            StyledButton(onPressed: increaseSugar, child: const Text('+'))
          ],
        )
      ],
    );
  }
}
