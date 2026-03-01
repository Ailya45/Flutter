import 'package:flutter/material.dart';
import 'package:imc_app/core/app_colors.dart';

class ComponenteButtonStyle {
  static final ButtonStyle styleButton = ButtonStyle(
    shape: WidgetStatePropertyAll(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    backgroundColor: WidgetStateProperty.all(AppColors.primary),
  );
}
