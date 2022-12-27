import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kn_fit_app/app/core/animations/base_slide_animation.dart';
import 'package:kn_fit_app/app/core/colors.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar({
    Key? key,
    this.title,
    this.isShowBackButton = true,
  }) : super(key: key);

  final String? title;
  final bool? isShowBackButton;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.steelGray,
      title: BaseSlideAnimation(
        direction: BaseSlideDirection.topToBottom,
        child: Text(title ?? ''),
      ),
      systemOverlayStyle: SystemUiOverlayStyle.light,
      automaticallyImplyLeading: isShowBackButton!,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
