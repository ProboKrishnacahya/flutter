import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final controllerA = TextEditingController();
  final controllerB = TextEditingController();
  final formKey = GlobalKey<FormState>();
  double result = 0.0;
  String showInputA = '';
  String showInputB = '';

  count(String operator) {
    if (formKey.currentState!.validate()) {
      double inputA = double.parse(controllerA.text);
      double inputB = double.parse(controllerB.text);

      switch (operator) {
        case '+':
          result = inputA + inputB;
          break;
        case '-':
          result = inputA - inputB;
          break;
        case '*':
          result = inputA * inputB;
          break;
        case '/':
          result = inputA / inputB;
          break;
        case '%':
          result = inputA % inputB;
          break;
        default:
          break;
      }
      setState(() {});
    }
  }

  clearA() {
    controllerA.clear();
    showInputA = '';
    setState(() {});
  }

  clearB() {
    controllerB.clear();
    showInputB = '';
    setState(() {});
  }

  reset() {
    result = 0.0;
    clearA();
    clearB();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calculator')),
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextFormField(
              controller: controllerA,
              validator: (value) => value == '' ? "Please Input Number" : null,
              keyboardType: TextInputType.number,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              onChanged: (value) {
                showInputA = value;
                setState(() {});
              },
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: '20',
                labelText: 'Input A',
                suffixIcon: showInputA == ''
                    ? null
                    : IconButton(
                        onPressed: () => clearA(),
                        icon: const Icon(Icons.clear),
                      ),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: controllerB,
              validator: (value) => value == '' ? "Please Input Number" : null,
              keyboardType: TextInputType.number,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              onChanged: (value) {
                showInputB = value;
                setState(() {});
              },
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: '20',
                labelText: 'Input B',
                suffixIcon: showInputB == ''
                    ? null
                    : IconButton(
                        onPressed: () => clearB(),
                        icon: const Icon(Icons.clear),
                      ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 40,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () => count('+'),
                    child: const Text('+'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => count('-'),
                  child: const Text('-'),
                ),
                ElevatedButton(
                  onPressed: () => count('*'),
                  child: const Text('*'),
                ),
                ElevatedButton(
                  onPressed: () => count('/'),
                  child: const Text('/'),
                ),
                ElevatedButton(
                  onPressed: () => count('%'),
                  child: const Text('%'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              'Result: ${result.toStringAsFixed(3)}',
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              onPressed: () => reset(),
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
