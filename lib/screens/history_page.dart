import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  List<double> bmis = [2.6, 4.5];

  HistoryPage({super.key});

  void addBmi(double newBMI) {
    bmis.add(newBMI);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('History'),
        ),
        body: ListView.builder(
          itemCount: bmis.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('BMI: ${bmis[index]}'),
            );
          },
        ));
  }
}
