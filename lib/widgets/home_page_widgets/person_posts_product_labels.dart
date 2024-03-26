import 'package:fashion_app/constant/app_constant.dart';
import 'package:flutter/material.dart';

class PersonPostLabelProduct extends StatelessWidget {
  const PersonPostLabelProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          height: 25,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.brown.withOpacity(0.2)),
          child: const Center(
            child: Text("# Louis vuitton", style: Constant.cardLabel),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 25,
          width: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.brown.withOpacity(0.2)),
          child: const Center(
            child: Text("# Chloe", style: Constant.cardLabel),
          ),
        ),
      ],
    );
  }
}
