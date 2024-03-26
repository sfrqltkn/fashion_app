import 'package:fashion_app/constant/app_constant.dart';
import 'package:flutter/material.dart';

class PersonPostInteraction extends StatelessWidget {
  const PersonPostInteraction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.reply,
          color: Colors.brown.withOpacity(0.2),
          size: 30,
        ),
        const SizedBox(width: 10),
        const Text("1.7k", style: Constant.interactionText),
        const SizedBox(
          width: 25,
        ),
        Icon(
          Icons.comment,
          color: Colors.brown.withOpacity(0.2),
          size: 30,
        ),
        const SizedBox(
          width: 10,
        ),
        const Text("325", style: Constant.interactionText),
        SizedBox(
          width: MediaQuery.of(context).size.width - 235,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Icon(
                Icons.favorite,
                color: Colors.red,
                size: 30,
              ),
              SizedBox(
                width: 5,
              ),
              Text("2.3k", style: Constant.interactionText),
            ],
          ),
        )
      ],
    );
  }
}
