import 'package:flutter/material.dart';
import 'package:imc_app/core/app_colors.dart';
import 'package:imc_app/core/text_style.dart';

class HeigthSelector extends StatefulWidget {
  final double selectedHeight;
  final Function(double) onHeightChanged;
  const HeigthSelector({
    super.key,
    required this.selectedHeight,
    required this.onHeightChanged,
  });

  @override
  State<HeigthSelector> createState() => _HeigthSelectorState();
}

class _HeigthSelectorState extends State<HeigthSelector> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundComponent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Text("ALTURA", style: AppTextStyle.bodyText),
            Text(
              "${widget.selectedHeight.toStringAsFixed(0)} cm",
              style: AppTextStyle.titleText,
            ),
            Slider(
              value: widget.selectedHeight,
              onChanged: (newHeight) {
                setState(() {
                  widget.onHeightChanged(newHeight);
                });
              },
              min: 130,
              max: 220,
              divisions: 90,
              label: "${widget.selectedHeight.toStringAsFixed(0)} cm",
              activeColor: AppColors.primary,
            ),
          ],
        ),
      ),
    );
  }
}
