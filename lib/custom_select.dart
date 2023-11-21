import 'package:flutter/material.dart';

class RadioItem {
  final String title;
  final String value;

  RadioItem({required this.title, required this.value});
}

class CustomRadioListTile extends StatelessWidget {
  final RadioItem radioItem;
  final String? groupValue;
  final ValueChanged<String?> onChanged;

  const CustomRadioListTile({
    required this.radioItem,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      title: Text(radioItem.title),
      value: radioItem.value,
      groupValue: groupValue,
      onChanged: onChanged,
    );
  }
}
