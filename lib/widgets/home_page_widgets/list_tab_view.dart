import 'package:fashion_app/constant/app_constant.dart';
import 'package:flutter/material.dart';

class ListPerson extends StatefulWidget {
  const ListPerson({super.key});

  @override
  State<ListPerson> createState() => __ListPersonState();
}

class __ListPersonState extends State<ListPerson> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: double.infinity,
      child: ListView(
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        children: [
          listElement('assets/model1.jpeg', 'assets/chanellogo.jpg'),
          const SizedBox(width: 30),
          listElement('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
          const SizedBox(width: 30),
          listElement('assets/model3.jpeg', 'assets/chloelogo.png'),
          const SizedBox(width: 30),
          listElement('assets/model1.jpeg', 'assets/chanellogo.jpg'),
          const SizedBox(width: 30),
          listElement('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
          const SizedBox(width: 30),
          listElement('assets/model3.jpeg', 'assets/chloelogo.png'),
          const SizedBox(width: 30),
        ],
      ),
    );
  }

  listElement(String imagePath, String logoPaht) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(logoPaht),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 10),
        Container(
          height: 30,
          width: 75,
          alignment: Alignment.center,
          decoration: Constant.containerFollow,
          child: const Text("Follow", style: Constant.followText),
        ),
      ],
    );
  }
}
