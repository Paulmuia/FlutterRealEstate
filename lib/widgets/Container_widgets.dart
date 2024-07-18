import 'package:flutter/material.dart';

class ContainerWidgets extends StatelessWidget {
  final Icon icon;
  final Text text;
  const ContainerWidgets({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 3),
                          blurRadius: 6,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    width: 70,
                    height: 80,
                    child:  Column(
                      children: [
                        const SizedBox(
                          height: 4,
                        ),
                        icon,
                        text,
                      ],
                    ),
                  );
  }
}