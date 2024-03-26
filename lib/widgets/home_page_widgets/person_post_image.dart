import 'package:fashion_app/screen/detail_page.dart';
import 'package:flutter/material.dart';

class PersonPostDesignImage extends StatelessWidget {
  const PersonPostDesignImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        builderImageClick(context, 'assets/modelgrid1.jpeg', 200, 50),
        const SizedBox(width: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            builderImageClick(context, 'assets/modelgrid2.jpeg', 100, 100),
            const SizedBox(height: 5),
            builderImageClick(context, 'assets/modelgrid3.jpeg', 95, 100),
            const SizedBox(height: 10),
          ],
        ),
      ],
    );
  }

  GestureDetector builderImageClick(
      BuildContext context, String asset, double height, int width) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailPage(assetname: asset)));
      },
      child: Hero(
        tag: asset,
        child: Container(
          width: (MediaQuery.of(context).size.width - width) / 2,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              image: AssetImage(asset),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
