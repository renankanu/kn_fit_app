import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BaseCachedImage extends StatelessWidget {
  const BaseCachedImage({
    Key? key,
    this.imageUrl,
    this.radius,
    this.width,
    this.height,
    this.fit,
    this.progressIndicatorColor,
    this.progressIndicatorStrokeWidth,
    this.borderWidth,
    this.borderColor,
  }) : super(key: key);

  final String? imageUrl;
  final double? radius;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Color? progressIndicatorColor;
  final double? progressIndicatorStrokeWidth;
  final double? borderWidth;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenWidth = MediaQuery.of(context).size.width;

    return CachedNetworkImage(
      height: height ?? 200,
      width: width ?? screenWidth,
      imageUrl: imageUrl ?? _getDefaultImage,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor ?? theme.colorScheme.secondary,
            width: borderWidth ?? 0,
            style: borderWidth != null ? BorderStyle.solid : BorderStyle.none,
          ),
          borderRadius: BorderRadius.circular(radius ?? 0),
          image: DecorationImage(
            image: imageProvider,
            fit: fit ?? BoxFit.cover,
          ),
        ),
      ),
      placeholder: (_, __) => Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation(
            progressIndicatorColor ?? theme.colorScheme.secondary,
          ),
          strokeWidth: progressIndicatorStrokeWidth ?? 2,
        ),
      ),
      errorWidget: (_, __, ___) => Container(
        height: height ?? 200,
        width: width ?? screenWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 0),
          color: Colors.grey.withOpacity(0.4),
          border: Border.all(
            color: borderColor ?? theme.colorScheme.secondary,
            width: borderWidth ?? 0,
            style: borderWidth != null ? BorderStyle.solid : BorderStyle.none,
          ),
        ),
        child: const Icon(Icons.image),
      ),
    );
  }

  String get _getDefaultImage =>
      'https://user-images.githubusercontent.com/67009935/146430403-2f72c985-1f0d-458d-9894-17efbb762a58.png';
}
