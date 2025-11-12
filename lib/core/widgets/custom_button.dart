import 'package:cake_house/core/theme/app_colors.dart';
import 'package:cake_house/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isPrimary;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isPrimary = true,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: isPrimary ? AppColors.primary : AppColors.textDark,
        foregroundColor: isPrimary ? Colors.white : AppColors.textDark,
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: isPrimary ? AppColors.primary : AppColors.textLight,
          ),
        ),
        elevation: 2,
      ),
      onPressed: onPressed,
      child: Text(text, style: AppTextStyles.button),
    );
  }
}
