import 'package:flutter/material.dart';
import 'package:flutter_class/app/routes/app_route.dart';

class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _AtithmeticViewState();
}

class _AtithmeticViewState extends State<ArithmeticView> {
  final key = GlobalKey<FormState>();
  final firstController = TextEditingController();
  final secondController = TextEditingController();

  add() {
    int first = int.parse(firstController.text);
    int second = int.parse(secondController.text);

    int result = first + second;

    Navigator.pushNamed(context, AppRoute.outputRoute, arguments: result);
  }

  subtract() {
    int first = int.parse(firstController.text);
    int second = int.parse(secondController.text);

    int result = first - second;

    Navigator.pushNamed(context, AppRoute.outputRoute, arguments: result);
  }

  divide() {
    int first = int.parse(firstController.text);
    int second = int.parse(secondController.text);

    int result = first ~/ second;

    Navigator.pushNamed(context, AppRoute.outputRoute, arguments: result);
  }

  multiply() {
    int first = int.parse(firstController.text);
    int second = int.parse(secondController.text);

    int result = first ~/ second;

    Navigator.pushNamed(context, AppRoute.outputRoute, arguments: result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Form(
            key: key,
            child: Column(
              children: [
                TextFormField(
                  controller: firstController,
                  decoration: const InputDecoration(
                    labelText: 'First Number',
                  ),
                ),
                TextFormField(
                  controller: secondController,
                  decoration: const InputDecoration(
                    labelText: 'Second Number',
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (key.currentState!.validate()) {
                        add();
                      }
                    },
                    child: const Text('Addition'),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (key.currentState!.validate()) {
                        subtract();
                      }
                    },
                    child: const Text('Subtraction'),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (key.currentState!.validate()) {
                        multiply();
                      }
                    },
                    child: const Text('Multiplication'),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (key.currentState!.validate()) {
                        divide();
                      }
                    },
                    child: const Text('Division'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
