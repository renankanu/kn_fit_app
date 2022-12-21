import 'package:flutter/material.dart';
import 'package:kn_fit_app/app/core/animations/base_slide_animation.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar({
    Key? key,
    this.title,
  }) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: BaseSlideAnimation(
        direction: BaseSlideDirection.topToBottom,
        child: Text(title ?? ''),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
