import 'package:flutter/material.dart';
import 'package:kn_fit_app/app/core/colors.dart';

class BaseButton extends StatelessWidget {
  const BaseButton({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.berylGreen,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Center(
        child: Text(
          label,
          style: const TextStyle(
            color: AppColors.capeCod,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
