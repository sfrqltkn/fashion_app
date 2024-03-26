import 'package:fashion_app/constant/app_constant.dart';
import 'package:flutter/material.dart';

class PersonPostInfo extends StatelessWidget {
  const PersonPostInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage("assets/model1.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 10),
        SizedBox(
          width: MediaQuery.of(context).size.width - 160,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Daisy", style: Constant.contentText),
              SizedBox(height: 5),
              Text("34 mins ago", style: Constant.cardDesc),
            ],
          ),
        ),
        const Icon(
          Icons.more_vert,
          color: Colors.black,
        ),
      ],
    );
  }
}
