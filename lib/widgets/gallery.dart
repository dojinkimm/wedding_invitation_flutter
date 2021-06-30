import 'package:flutter/material.dart';

import 'package:wedding_invitation_flutter/model/image.dart';
import 'package:wedding_invitation_flutter/widgets/image_card.dart';
import 'package:wedding_invitation_flutter/widgets/page_transformer.dart';

class Gallery extends StatelessWidget {
  Widget _buildImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Image.asset(
        'assets/images/flower.png',
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _buildTitleText() {
    return Container(
      child: Text(
        'Photo Gallery',
        style: TextStyle(
          color: const Color.fromRGBO(41, 82, 56, 100),
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildImage(context),
        _buildTitleText(),
        SizedBox(height: 50.0),
        SizedBox.fromSize(
          size: const Size.fromHeight(500.0),
          child: PageTransformer(
            pageViewBuilder: (context, visibilityResolver) {
              return PageView.builder(
                controller: PageController(viewportFraction: 0.85),
                itemCount: imageItems.length,
                itemBuilder: (context, index) {
                  final item = imageItems[index];
                  final pageVisibility =
                      visibilityResolver.resolvePageVisibility(index);

                  return ImageCardItem(
                    item: item,
                    pageVisibility: pageVisibility,
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}