import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

class WidgetsPage extends StatefulWidget {
  const WidgetsPage({super.key});

  @override
  State<WidgetsPage> createState() => _WidgetsPageState();
}

class _WidgetsPageState extends State<WidgetsPage> {
  String gender = 'Laki-Laki';
  bool remindMe = false;
  final controller = GroupButtonController();
  final times = ["12:00", "13:00", "14:30", "18:00", "19:00", "21:40"];
  List timesSelected = [];
  bool isOn = true;
  double valueTrack = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Row(
            children: [
              Radio(
                value: 'Laki-Laki',
                groupValue: gender,
                onChanged: (String? value) {
                  gender = value!;
                  setState(
                    () {},
                  );
                },
              ),
              GestureDetector(
                onTap: () {
                  gender = 'Laki-Laki';
                  setState(() {});
                },
                child: const Text('Laki-Laki'),
              ),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 'Perempuan',
                groupValue: gender,
                onChanged: (String? value) {
                  gender = value!;
                  setState(
                    () {},
                  );
                },
              ),
              GestureDetector(
                onTap: () {
                  gender = 'Perempuan';
                  setState(() {});
                },
                child: const Text('Perempuan'),
              ),
            ],
          ),
          const Divider(),
          RadioListTile(
            value: 'Laki-Laki',
            groupValue: gender,
            onChanged: (String? value) {
              gender = value!;
              setState(() {});
            },
            title: const Text('Laki-Laki'),
          ),
          RadioListTile(
            value: 'Perempuan',
            groupValue: gender,
            onChanged: (String? value) {
              gender = value!;
              setState(() {});
            },
            title: const Text('Perempuan'),
          ),
          const Divider(),
          Row(
            children: [
              Checkbox(
                value: remindMe,
                onChanged: (bool? value) {
                  remindMe = value!;
                  setState(() {});
                },
              ),
              const Text('Remind Me'),
            ],
          ),
          const Divider(),
          CheckboxListTile(
            value: remindMe,
            onChanged: (bool? value) {
              remindMe = value!;
              setState(() {});
            },
            title: const Text('Topping'),
          ),
          CheckboxListTile(
            value: remindMe,
            onChanged: (bool? value) {
              remindMe = value!;
              setState(() {});
            },
            title: const Text('Extra Hot'),
          ),
          CheckboxListTile(
            value: remindMe,
            onChanged: (bool? value) {
              remindMe = value!;
              setState(() {});
            },
            title: const Text('Salad'),
          ),
          const Divider(),
          GroupButton(
            controller: controller,
            isRadio: false,
            onSelected: (values, index, isSelected) {
              print('$index button is selected ($values)');
              if (isSelected) {
                timesSelected.add(values);
              } else {
                timesSelected.remove(values);
              }
              print(timesSelected);
            },
            buttons: times,
          ),
          const Divider(),
          ListTile(
            onTap: () {
              isOn = !isOn;
              setState(() {});
            },
            title: const Text('Dark Mode'),
            trailing: Switch(
              value: isOn,
              // activeColor: Colors.blue,
              onChanged: (value) {
                isOn = value;
                setState(() {});
              },
            ),
          ),
          const Divider(),
          Slider(
            min: 0,
            max: 10,
            // divisions: 10,
            label: valueTrack.toInt().toString(),
            value: valueTrack,
            onChanged: (value) {
              valueTrack = value;
              setState(() {});
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('0:00'),
              Text(
                  '${valueTrack ~/ 60}:${(valueTrack % 60).toStringAsFixed(0)}'),
              const Text('1:30'),
            ],
          ),
        ],
      ),
    );
  }
}
