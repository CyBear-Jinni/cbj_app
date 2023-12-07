import 'package:flutter/cupertino.dart';

class ImageAtom extends StatelessWidget {
  const ImageAtom(this.name, {this.fit, this.width, this.height});

  final String name;
  final BoxFit? fit;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      name,
      fit: fit,
      width: width,
      height: height,
    );
  }
}
