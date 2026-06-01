import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/utils/app_colors.dart';
import 'package:fruits_hub_dashboard/core/utils/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, this.text});

  final Function()? onPressed;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: onPressed != null
            ? AppColors.green1_500
            : AppColors.grayscale200,
        minimumSize: const Size(double.infinity, 54),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Text(
        text ?? 'Add Data',
        textAlign: TextAlign.center,
        style: TextStyles.bold16.copyWith(
          color: onPressed != null
              ? AppColors.backgroundWhiteColor
              : AppColors.grayscale400,
        ),
      ),
    );
  }
}
