import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class CounterFuntionsScreen extends StatefulWidget {
  const CounterFuntionsScreen({super.key});

  @override
  State<CounterFuntionsScreen> createState() => _CounterFuntionsScreenState();
}

class _CounterFuntionsScreenState extends State<CounterFuntionsScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text('Counter Funtions', style: TextStyle(fontSize: 50))),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    counter = 0;
                  });
                },
                icon: const Icon((Icons.refresh_rounded)))
          ],
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('$counter',
                style: const TextStyle(
                    fontSize: 200, fontWeight: FontWeight.w100)),
            if (counter == 0 || counter > 1)
              const Text('Clics', style: TextStyle(fontSize: 50))
            else
              const Text('Clic', style: TextStyle(fontSize: 50))
          ]),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.refresh,
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                setState(() {
                  if (counter == 0) return;
                  counter--;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(icon: Icons.plus_one_outlined, onPressed: (){
              setState(() {
                counter++;
              });
            },),
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(

      backgroundColor: Colors.purple,     
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
