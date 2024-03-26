import 'package:fashion_app/constant/app_constant.dart';
import 'package:fashion_app/widgets/home_page_widgets/person_post_image.dart';
import 'package:fashion_app/widgets/home_page_widgets/person_post_information.dart';
import 'package:fashion_app/widgets/home_page_widgets/person_post_interaction.dart';
import 'package:fashion_app/widgets/home_page_widgets/person_posts_product_labels.dart';
import 'package:flutter/material.dart';

class PersonPosts extends StatelessWidget {
  const PersonPosts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Material(
            borderRadius: BorderRadius.circular(18),
            elevation: 8,
            child: Container(
              padding: const EdgeInsets.all(16),
              height: 520,
              width: double.infinity,
              child: const Column(
                children: [
                  PersonPostInfo(),
                  SizedBox(height: 15),
                  Text(
                      "This official website features a ribbed knit zipper jacket that is"
                      "modern and stylish. It looks very temparament and is recommend to friends",
                      style: Constant.cardDesc),
                  SizedBox(height: 15),
                  PersonPostDesignImage(),
                  SizedBox(height: 15),
                  PersonPostLabelProduct(),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  SizedBox(height: 20),
                  PersonPostInteraction(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
