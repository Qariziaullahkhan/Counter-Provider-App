import 'package:counter_provider_app/providers/Counter_providers.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("****************************************************************");
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Counter Provider App",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(280, 50),
                ),
                onPressed: () {
                  context.read<CounterProvider>().increament();
                },
                child: const Text(
                  "Increament",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            const Gap(20),
            Consumer<CounterProvider>(builder:
                (BuildContext context, CounterProvider value, Widget? child) {
              return Text(value.count.toString());
            }),
            const Gap(20),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(280, 50),
                ),
                onPressed: () {
                  context.read<CounterProvider>().decreament();
                },
                child: const Text(
                  "Decreament",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }
}
