import 'package:flutter/material.dart';

class ObjectiveWidget extends StatelessWidget {
  ObjectiveWidget({
    super.key,
    required this.description,
    required this.color,
    required this.icon,
    required this.isSelected,
  });

  final String description;
  final Widget icon;
  final bool isSelected;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 55,
      decoration: BoxDecoration(
          border: Border.all(
            width: 1.5,
            color: isSelected ? Colors.green.shade900 : Colors.black12,
          ),
          borderRadius: BorderRadius.circular(8),
          color: isSelected ? Colors.white : color),
      child: ListTile(
        leading: icon,
        iconColor: isSelected ? Colors.green.shade900 : Colors.grey.shade600,
        title: Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: isSelected ? Colors.green.shade900 : Colors.black),
        ),
      ),
    );
  }
}
