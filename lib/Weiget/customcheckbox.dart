import 'package:flutter/material.dart';

class CustromCheckbox extends StatefulWidget {
  const CustromCheckbox({Key? key}) : super(key: key);

  @override
  State<CustromCheckbox> createState() => _CustromCheckboxState();
}

class _CustromCheckboxState extends State<CustromCheckbox> {
  // ignore: prefer_final_fields
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Container(
        height: 50,
        width: 50,
        color: _isSelected ? Colors.blue : Colors.green,
        decoration: const BoxDecoration(
            // borderRadius: ,
            ),
      ),
    );
  }
}
