import 'package:fashion_app/widgets/detail_widgets/detail_product.dart';
import 'package:fashion_app/widgets/detail_widgets/lamineted_text.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String assetname;
  const DetailPage({super.key, required this.assetname});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: widget.assetname,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.assetname), fit: BoxFit.cover),
            ),
          ),
        ),
        const DetailProduct(),
        const LaminatedText(),
      ],
    );
  }
}
