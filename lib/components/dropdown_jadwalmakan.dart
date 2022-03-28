import 'package:flutter/material.dart';

class DropdownJadwal extends StatefulWidget {
  const DropdownJadwal({Key? key}) : super(key: key);

  @override
  State<DropdownJadwal> createState() => _DropdownJadwalState();
}

class _DropdownJadwalState extends State<DropdownJadwal> {
  String dropdownValue = 'Breakfast';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      dropdownColor: Colors.white,
      value: dropdownValue,
      icon: const Icon(Icons.keyboard_arrow_down_rounded),
      iconSize: 30,
      elevation: 16,
      style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 22),
      underline: Container(
        height: 0,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['Breakfast', 'Lunch', 'Dinner', 'Snack/Other']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
          ),
        );
      }).toList(),
    );
  }
}
