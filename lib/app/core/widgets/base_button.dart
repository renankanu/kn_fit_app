import 'package:flutter/material.dart';
import 'package:kn_fit_app/app/core/colors.dart';

class BaseButton extends StatelessWidget {
  const BaseButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.height = 54,
    this.isLoading = false,
  }) : super(key: key);

  final String label;
  final VoidCallback onPressed;
  final double height;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.berylGreen,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator()
              : Text(
                  label,
                  style: const TextStyle(
                    color: AppColors.capeCod,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      ),
    );
  }
}
